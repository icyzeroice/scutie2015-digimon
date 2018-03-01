------------------------------------------------------------------------------
-- @name: VGA Display Module 800 * 600 @75Hz (50MHz)
-- @description: Fetch data from SDRAM using Qsys SDRAM IP in certain address,
--               and then cast them on the screen through VGA Display Module
--               that we write.
------------------------------------------------------------------------------
-- The standard we are using: 
-- Clock frequencies   : 50MHz
-- Horizonal timing information
--    sync pluse       : 80
--    back porch       : 160
--    active           : 800
--    front porch      : 16
--    all lines        : 1056
-- Vertical timing information
--    sync pluse       : 3
--    back porch       : 21
------------------------------------------------------------------------------
-- @name: VGA Display Module 800 * 600 @75Hz (50MHz)
-- @description: Fetch data from SDRAM using Qsys SDRAM IP in certain address,
--               and then cast them on the screen through VGA Display Module
--               that we write.
------------------------------------------------------------------------------
-- The standard we are using: 
-- Clock frequencies   : 50MHz
-- Horizonal timing information
--    sync pluse       : 80
--    back porch       : 160
--    active           : 800
--    front porch      : 16
--    all lines        : 1056
-- Vertical timing information
--    sync pluse       : 3
--    back porch       : 21
--    active           : 600
--    front porch      : 1
--    all lines        : 625
------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity vga_out is
   port(
      Clk          : in std_logic;
      Rst          : in std_logic;
	  Vga_choose   : in integer range 0 to 9;
      Joy          : in integer range 0 to 10;
      Stomach      : in integer range 0 TO 10;
	  
	  Vga_rgb      : out std_logic_vector (7 downto 0); -- R2, R1, R0, G2, G1, G0, B1, B0
	  Vga_vsync    : out std_logic;
      Vga_hsync    : out std_logic);
end entity;

architecture behave of vga_out is

   constant ACTIVE_ONE   : integer := 0;

   constant PLAY_ONE     : integer := 1;
   constant PLAY_TWO     : integer := 2;
   constant PLAY_THREE   : integer := 3;
   constant PLAY_FOUR    : integer := 4;

   constant FEED_ONE     : integer := 5;
   constant FEED_TWO     : integer := 6;
   constant FEED_THREE   : integer := 7;
   constant FEED_FOUR    : integer := 8;

   constant DEAD_ONE     : integer := 9;
   
   

   constant H_SYNC_PULSE_MAX   : integer := 80;
   constant H_ACTIVE_MIN       : integer := 240;
   constant H_ACTIVE_MAX       : integer := 1040;
   constant H_MAX              : integer := 1056;

   constant V_SYNC_PULSE_MAX   : integer := 3;
   constant V_ACTIVE_MIN       : integer := 24;
   constant V_ACTIVE_MAX       : integer := 624;
   constant V_MAX              : integer := 625;
   
   constant STATE_LEN          : integer := 10;
   constant PET_LEN            : integer := 20;
   
   constant Vga_rgb_show       : std_logic_vector (7 downto 0) := "11100000";
   constant Vga_rgb_unshow     : std_logic_vector (7 downto 0) := "00000011";

   signal Vga_hsync_cnt    : integer range 0 to 1056;
   signal Vga_vsync_cnt    : integer range 0 to 625;
   signal Vga_hsync_cnt_n  : integer range 0 to 1056;
   signal Vga_vsync_cnt_n  : integer range 0 to 625;
   
   signal Vga_vsync_n  : std_logic;
   signal Vga_hsync_n  : std_logic;
   signal Vga_rgb_n    : std_logic_vector (7 downto 0);
begin

-- 时序电路,用来给hsync_cnt,vsync_cnt,vga_vsync,vga_hsync,vga_rgb寄存器赋值
   process(Clk, Rst)
   begin
      if rising_edge(clk) then
         if rst = '0' then
            Vga_rgb <= "00000000";
            Vga_hsync <= '0';
            Vga_vsync <= '0';
	        Vga_hsync_cnt <= 0;
	        Vga_vsync_cnt <= 0;
         else
            Vga_rgb <= Vga_rgb_n;
	        Vga_hsync <= Vga_hsync_n;
	        Vga_vsync <= Vga_vsync_n;
	        Vga_hsync_cnt <= Vga_hsync_cnt_n;
	        Vga_vsync_cnt <= Vga_vsync_cnt_n;
         end if;
      end if;
   end process;

-- 组合电路,水平扫描
   process(Vga_hsync_cnt)
   begin
      if(Vga_hsync_cnt = H_MAX) then			--判断水平扫描时序    80+160+800+16 = 1056
         Vga_hsync_cnt_n <= 0;	--如果水平扫描完毕,计数器将会被清零
      else
         Vga_hsync_cnt_n <= Vga_hsync_cnt + 1;		--如果水平没有扫描完毕,计数器继续累加
      end if;
   end process;


-- 组合电路,垂直扫描
   process(Vga_vsync_cnt)
   begin
      if((Vga_vsync_cnt = V_MAX) and (Vga_hsync_cnt = H_MAX)) then --判断垂直扫描时序 3+21+600+1=625
         Vga_vsync_cnt_n <= 0;					--如果垂直扫描完毕,计数器将会被清零
      elsif(Vga_hsync_cnt = H_MAX)	then	--判断水平扫描时序
	     Vga_vsync_cnt_n <= Vga_vsync_cnt + 1;	--如果水平扫描完毕,计数器继续累加
      else
	     Vga_vsync_cnt_n <= Vga_vsync_cnt;			--否则,计数器将保持不变
      end if;
   end process;

--组合电路，将HSYNC_A区域置0,HSYNC_B+HSYNC_C+HSYNC_D置1
   process(Vga_hsync_cnt)
   begin
      if(Vga_hsync_cnt < H_SYNC_PULSE_MAX)	then			--判断水平扫描时序
         Vga_hsync_n <= '0';						--如果在HSYNC_A区域,那么置0
      else
         Vga_hsync_n <= '1';						--如果不在HSYNC_A区域,那么置1
      end if;
   end process;

--组合电路，将VSYNC_A区域置0,VSYNC_P+VSYNC_Q+VSYNC_R置1
   process(Vga_vsync_cnt)
   begin
      if(Vga_vsync_cnt < V_SYNC_PULSE_MAX)	then			--判断水平扫描时序
         Vga_vsync_n <= '0';						--如果在VSYNC_O区域,那么置0
      else
         Vga_vsync_n <= '1';						--如果不在VSYNC_O区域,那么置1
      end if;
   end process;
   
--Vga_choose
--Joy
--Stomach
--组合电路,用于图案
   process(Vga_hsync_cnt, Vga_vsync_cnt)
   variable offset:integer range -5 TO 5;
   begin
      --
	  --宠物状态栏
	  --
	  
	  --欢乐度图标,为爱心
	  if Vga_hsync_cnt >= H_ACTIVE_MIN + 3*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 5*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 2*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 3*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 6*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 8*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 2*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 3*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 2*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 9*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 3*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 5*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 3*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 8*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 5*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 6*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 4*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 7*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 6*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 7*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 5*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 6*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 7*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 8*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
	  
	  --欢乐度边框
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 11*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 23*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 3*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 4*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 11*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 5*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 22*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 23*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 5*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 11*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 23*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 5*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 6*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
	  
	  --Joy
      elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 12*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 13*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 5*STATE_LEN then  
	     if Joy >= 1 then
	        Vga_rgb_n <= Vga_rgb_show;
		 else
		    Vga_rgb_n <= Vga_rgb_unshow;
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 13*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 14*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 5*STATE_LEN then   
	     if Joy >= 2 then
	        Vga_rgb_n <= Vga_rgb_show;
		 else
		    Vga_rgb_n <= Vga_rgb_unshow;
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 14*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 15*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 5*STATE_LEN then   
	     if Joy >= 3 then
	        Vga_rgb_n <= Vga_rgb_show;
		 else
		    Vga_rgb_n <= Vga_rgb_unshow;
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 15*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 16*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 5*STATE_LEN then  
	     if Joy >= 4 then
	        Vga_rgb_n <= Vga_rgb_show;
		 else
		    Vga_rgb_n <= Vga_rgb_unshow;
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 16*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 17*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 5*STATE_LEN then  
	     if Joy >= 5 then
	        Vga_rgb_n <= Vga_rgb_show;
		 else
		    Vga_rgb_n <= Vga_rgb_unshow;
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 17*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 18*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 5*STATE_LEN then   
	     if Joy >= 6 then
	        Vga_rgb_n <= Vga_rgb_show;
		 else
		    Vga_rgb_n <= Vga_rgb_unshow;
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 18*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 19*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 5*STATE_LEN then   
	     if Joy >= 7 then
	        Vga_rgb_n <= Vga_rgb_show;
		 else
		    Vga_rgb_n <= Vga_rgb_unshow;
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 19*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 20*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 5*STATE_LEN then  
	     if Joy >= 8 then
	        Vga_rgb_n <= Vga_rgb_show;
		 else
		    Vga_rgb_n <= Vga_rgb_unshow;
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 20*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 21*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 5*STATE_LEN then   
	     if Joy >= 9 then
	        Vga_rgb_n <= Vga_rgb_show;
		 else
		    Vga_rgb_n <= Vga_rgb_unshow;
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 21*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 22*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 5*STATE_LEN then  
	     if Joy >= 10 then
	        Vga_rgb_n <= Vga_rgb_show;
		 else
		    Vga_rgb_n <= Vga_rgb_unshow;
		 end if;
		

      --饥饿度图标,为嘴巴
      elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 4*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 7*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 9*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 10*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
		 
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 3*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 10*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 11*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 7*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 8*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 10*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 11*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
		 
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 2*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 3*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 11*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 12*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 4*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 5*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 11*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 12*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 8*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 9*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 11*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 12*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
		 
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 2*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 3*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 13*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 6*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 9*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 13*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
		 
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 2*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 3*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 13*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 14*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 5*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 6*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 13*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 14*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
		 
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 3*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 14*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 15*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 6*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 7*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 14*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 15*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 8*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 10*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 14*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 15*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
		 
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 4*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 7*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 15*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 16*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 8*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 10*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 15*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 16*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
      	  
		  
	  --饥饿度边框
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 11*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 23*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 11*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 12*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 11*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 13*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 22*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 23*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 13*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 11*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 23*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 13*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 14*STATE_LEN then   
	     Vga_rgb_n <= Vga_rgb_show;
		  
		  
	  --Stomach
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 12*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 13*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 13*STATE_LEN then  
	     if Stomach >= 1 then
	        Vga_rgb_n <= Vga_rgb_show;
		 else
		    Vga_rgb_n <= Vga_rgb_unshow;
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 13*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 14*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 13*STATE_LEN then   
	     if Stomach >= 2 then
	        Vga_rgb_n <= Vga_rgb_show;
		 else
		    Vga_rgb_n <= Vga_rgb_unshow;
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 14*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 15*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 13*STATE_LEN then   
	     if Stomach >= 3 then
	        Vga_rgb_n <= Vga_rgb_show;
		 else
		    Vga_rgb_n <= Vga_rgb_unshow;
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 15*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 16*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 13*STATE_LEN then  
	     if Stomach >= 4 then
	        Vga_rgb_n <= Vga_rgb_show;
		 else
		    Vga_rgb_n <= Vga_rgb_unshow;
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 16*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 17*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 13*STATE_LEN then  
	     if Stomach >= 5 then
	        Vga_rgb_n <= Vga_rgb_show;
		 else
		    Vga_rgb_n <= Vga_rgb_unshow;
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 17*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 18*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 13*STATE_LEN then   
	     if Stomach >= 6 then
	        Vga_rgb_n <= Vga_rgb_show;
		 else
		    Vga_rgb_n <= Vga_rgb_unshow;
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 18*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 19*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 13*STATE_LEN then   
	     if Stomach >= 7 then
	        Vga_rgb_n <= Vga_rgb_show;
		 else
		    Vga_rgb_n <= Vga_rgb_unshow;
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 19*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 20*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 13*STATE_LEN then  
	     if Stomach >= 8 then
	        Vga_rgb_n <= Vga_rgb_show;
		 else
		    Vga_rgb_n <= Vga_rgb_unshow;
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 20*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 21*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 13*STATE_LEN then   
	     if Stomach >= 9 then
	        Vga_rgb_n <= Vga_rgb_show;
		 else
		    Vga_rgb_n <= Vga_rgb_unshow;
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 21*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 22*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 13*STATE_LEN then  
	     if Stomach >= 10 then
	        Vga_rgb_n <= Vga_rgb_show;
		 else
		    Vga_rgb_n <= Vga_rgb_unshow;
		 end if;
			
			
			
	  --
	  --宠物显示区
	  --	
	  
	  --宠物主体
	  
		 
	     elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 28*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 31*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 18*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 19*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 49*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 52*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 18*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 19*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 --2
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 27*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 28*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 19*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 20*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 31*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 32*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 19*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 20*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 48*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 49*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 19*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 20*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 52*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 53*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 19*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 20*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
			--3
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 27*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 28*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 20*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 21*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 32*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 33*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 20*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 21*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 47*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 48*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 20*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 21*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 52*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 53*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 20*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 21*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
			--4
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 26*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 27*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 21*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 22*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 33*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 34*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 21*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 22*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 46*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 47*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 21*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 22*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 53*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 54*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 21*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 22*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
			--5
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 26*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 27*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 22*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 23*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 27*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 34*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 22*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 23*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 46*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 53*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 22*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 23*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 53*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 54*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 22*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 23*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
			--6
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 24*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 26*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 23*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 24*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 26*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 34*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 23*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 24*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 46*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 54*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 23*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 24*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 54*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 56*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 23*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 24*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
			--7
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 22*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 24*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 24*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 25*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 24*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 33*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 24*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 25*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 47*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 56*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 24*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 25*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 56*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 58*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 24*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 25*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
			--8
	     elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 22*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 33*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 25*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 26*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 47*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 58*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 25*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 26*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 --9
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 22*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 32*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 26*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 27*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 48*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 58*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 26*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 27*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
			--10
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 22*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 33*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 27*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 28*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 47*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 58*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 27*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 28*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
			--11
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 23*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 34*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 28*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 29*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 46*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 57*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 28*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 29*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
			--12
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 24*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 29*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 29*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 30*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 30*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 35*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 29*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 30*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 45*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 50*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 29*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 30*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 51*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 56*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 29*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 30*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
			--13
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 25*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 27*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 30*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 31*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 31*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 36*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 30*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 31*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 44*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 49*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 30*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 31*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 53*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 55*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 30*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 31*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
			--14   标记1
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 32*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 37*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 31*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 32*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 43*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 48*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 31*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 32*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 --15
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 33*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 38*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 32*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 33*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 42*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 47*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 32*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 33*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 --16
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 34*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 39*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 33*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 34*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 41*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 46*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 33*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 34*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 --17  标记2
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 35*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 38*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 34*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 35*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 40*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 45*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 34*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 35*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
			--18
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 36*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 37*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 35*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 36*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 39*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 44*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 35*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 36*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
			--19
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 38*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 43*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 36*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 37*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
			--20
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 37*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 42*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 37*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 38*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
			--21
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 36*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 41*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 38*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 39*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 43*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 44*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 38*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 39*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
			--22  标记2
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 35*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 40*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 39*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 40*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 42*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 45*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 39*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 40*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
			--23 眼睛1  
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 20*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 29*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 40*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 41*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 34*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 39*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 40*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 41*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 41*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 46*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 40*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 41*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 51*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 60*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 40*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 41*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
			--24 眼睛2
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 21*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 22*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 41*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 42*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 24*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 25*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 41*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 42*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 27*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 28*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 41*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 42*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 33*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 38*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 41*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 42*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 42*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 47*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 41*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 42*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 52*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 53*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 41*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 42*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 55*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 56*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 41*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 42*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 58*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 59*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 41*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 42*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
			--25
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 32*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 37*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 42*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 43*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 43*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 48*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 42*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 43*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 --26
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 25*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 27*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 43*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 44*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 31*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 36*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 43*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 44*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 44*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 49*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 43*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 44*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 53*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 55*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 43*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 44*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
			--27
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 24*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 29*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 44*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 45*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 30*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 35*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 44*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 45*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 45*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 50*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 44*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 45*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 51*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 56*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 44*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 45*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
			--28
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 23*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 34*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 45*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 46*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 46*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 57*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 45*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 46*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
			--29
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 22*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 33*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 46*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 47*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 47*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 58*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 46*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 47*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
			--30
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 22*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 32*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 47*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 48*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 48*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 58*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 47*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 48*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 --31
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 22*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 33*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 48*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 49*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 47*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 58*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 48*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 49*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
			--30
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 22*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 24*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 49*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 50*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 24*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 33*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 49*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 50*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 47*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 56*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 49*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 50*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 56*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 58*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 49*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 50*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
			--31
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 24*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 26*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 50*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 51*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 26*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 34*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 50*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 51*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 46*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 54*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 50*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 51*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 54*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 56*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 50*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 51*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
			--32
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 26*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 27*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 51*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 52*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 27*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 34*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 51*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 52*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 46*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 53*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 51*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 52*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 53*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 54*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 51*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 52*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 --33
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 26*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 27*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 52*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 53*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 33*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 34*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 52*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 53*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 46*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 47*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 52*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 53*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 53*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 54*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 52*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 53*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 --34
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 27*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 28*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 53*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 54*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 32*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 33*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 53*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 54*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 47*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 48*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 53*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 54*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 52*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 53*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 53*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 54*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
			--35
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 27*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 28*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 54*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 55*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 31*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 32*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 54*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 55*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 48*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 49*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 54*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 55*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 52*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 53*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 54*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 55*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
			--36
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 28*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 31*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 55*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 56*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 49*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 52*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 55*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 56*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
	  
		 
	     --1
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 32*STATE_LEN + offset and Vga_hsync_cnt < H_ACTIVE_MIN + 48*STATE_LEN + offset and Vga_vsync_cnt >= V_ACTIVE_MIN + 22*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 52*STATE_LEN then  
	     Vga_rgb_n <= Vga_rgb_show;
		 --2
      elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 27*STATE_LEN + offset and Vga_hsync_cnt < H_ACTIVE_MIN + 53*STATE_LEN + offset and Vga_vsync_cnt >= V_ACTIVE_MIN + 23*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 51*STATE_LEN then  
	     Vga_rgb_n <= Vga_rgb_show;
		--3
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 24*STATE_LEN + offset and Vga_hsync_cnt < H_ACTIVE_MIN + 56*STATE_LEN + offset and Vga_vsync_cnt >= V_ACTIVE_MIN + 24*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 50*STATE_LEN then  
	     Vga_rgb_n <= Vga_rgb_show;
		--4
      elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 21*STATE_LEN + offset and Vga_hsync_cnt < H_ACTIVE_MIN + 59*STATE_LEN + offset and Vga_vsync_cnt >= V_ACTIVE_MIN + 25*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 49*STATE_LEN then  
	     Vga_rgb_n <= Vga_rgb_show;
		--5
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 19*STATE_LEN + offset and Vga_hsync_cnt < H_ACTIVE_MIN + 61*STATE_LEN + offset and Vga_vsync_cnt >= V_ACTIVE_MIN + 26*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 48*STATE_LEN then  
	     Vga_rgb_n <= Vga_rgb_show;
		--6
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 18*STATE_LEN + offset and Vga_hsync_cnt < H_ACTIVE_MIN + 62*STATE_LEN + offset and Vga_vsync_cnt >= V_ACTIVE_MIN + 27*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 47*STATE_LEN then  
	     Vga_rgb_n <= Vga_rgb_show;
		--7
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 17*STATE_LEN + offset and Vga_hsync_cnt < H_ACTIVE_MIN + 63*STATE_LEN + offset and Vga_vsync_cnt >= V_ACTIVE_MIN + 28*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 46*STATE_LEN then  
	     Vga_rgb_n <= Vga_rgb_show;
		--8
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 16*STATE_LEN + offset and Vga_hsync_cnt < H_ACTIVE_MIN + 64*STATE_LEN + offset and Vga_vsync_cnt >= V_ACTIVE_MIN + 29*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 45*STATE_LEN then  
	     Vga_rgb_n <= Vga_rgb_show;
		--9
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 15*STATE_LEN + offset and Vga_hsync_cnt < H_ACTIVE_MIN + 65*STATE_LEN + offset and Vga_vsync_cnt >= V_ACTIVE_MIN + 31*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 43*STATE_LEN then  
	     Vga_rgb_n <= Vga_rgb_show;
		--10
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 14*STATE_LEN + offset and Vga_hsync_cnt < H_ACTIVE_MIN + 66*STATE_LEN + offset and Vga_vsync_cnt >= V_ACTIVE_MIN + 33*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 41*STATE_LEN then  
	     Vga_rgb_n <= Vga_rgb_show;
	  --宠物主体
	  
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 63*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 7*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 10*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 64*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 10*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 12*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 65*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 14*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 66*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 14*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 15*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 67*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 15*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 16*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 68*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 16*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 17*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
		 elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 70*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 17*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 19*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_unshow;
	  
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 66*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 68*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 3*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 4*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
	     elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 65*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 68*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 5*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
	     elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 65*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 67*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 5*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 6*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
	     elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 64*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 65*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 6*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 7*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 --头上的支
		 
	     elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 58*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 63*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 7*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 8*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
	     elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 66*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 71*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 7*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 8*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 
	     elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 57*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 64*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 8*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 9*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
	     elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 65*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 72*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 8*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 9*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 
	     elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 56*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 73*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 9*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 15*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 
	     elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 57*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 72*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 15*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 17*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 
	     elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 58*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 71*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 17*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 18*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 
	     elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 59*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 70*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 18*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 19*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
		 
	     elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 60*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 63*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 19*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 20*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
	     elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 66*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 69*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 19*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 20*STATE_LEN then  
	        Vga_rgb_n <= Vga_rgb_show;
	  
      else
         Vga_rgb_n <= Vga_rgb_unshow;
      end if;
	  
	  --Vga_choose  offset
	  if Vga_choose = DEAD_ONE or Vga_choose = ACTIVE_ONE or Vga_choose = FEED_ONE or Vga_choose = FEED_TWO or Vga_choose = FEED_THREE or Vga_choose = FEED_FOUR then
	     offset := 0;
	  elsif Vga_choose = PLAY_ONE then
	     offset := -5;
	  elsif Vga_choose = PLAY_TWO then
	     offset := 0;
	  elsif Vga_choose = PLAY_THREE then
	     offset := 5;
	  elsif Vga_choose = PLAY_FOUR then
	     offset := 0;
	  end if;
   end process;
   
end behave;