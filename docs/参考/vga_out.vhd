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
         if rst = '1' then
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
   begin
      --
	  --宠物状态栏
	  --
	  
	  --欢乐度图标,为爱心
	  if Vga_hsync_cnt >= H_ACTIVE_MIN + 3*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 5*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 2*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 3*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 6*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 8*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 2*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 3*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 2*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 9*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 3*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 5*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 3*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 8*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 5*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 6*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 4*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 7*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 6*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 7*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 5*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 6*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 7*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 8*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
	  
	  --欢乐度边框
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 11*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 23*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 3*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 4*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 11*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 5*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 22*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 23*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 5*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 11*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 23*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 5*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 6*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
	  
	  --Joy
      elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 12*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 13*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 5*STATE_LEN then  
	     if Joy >= 1 then
	        Vga_rgb_n <= "00000000";
		 else
		    Vga_rgb_n <= "10110011";
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 13*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 14*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 5*STATE_LEN then   
	     if Joy >= 2 then
	        Vga_rgb_n <= "00000000";
		 else
		    Vga_rgb_n <= "10110011";
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 14*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 15*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 5*STATE_LEN then   
	     if Joy >= 3 then
	        Vga_rgb_n <= "00000000";
		 else
		    Vga_rgb_n <= "10110011";
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 15*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 16*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 5*STATE_LEN then  
	     if Joy >= 4 then
	        Vga_rgb_n <= "00000000";
		 else
		    Vga_rgb_n <= "10110011";
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 16*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 17*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 5*STATE_LEN then  
	     if Joy >= 5 then
	        Vga_rgb_n <= "00000000";
		 else
		    Vga_rgb_n <= "10110011";
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 17*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 18*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 5*STATE_LEN then   
	     if Joy >= 6 then
	        Vga_rgb_n <= "00000000";
		 else
		    Vga_rgb_n <= "10110011";
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 18*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 19*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 5*STATE_LEN then   
	     if Joy >= 7 then
	        Vga_rgb_n <= "00000000";
		 else
		    Vga_rgb_n <= "10110011";
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 19*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 20*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 5*STATE_LEN then  
	     if Joy >= 8 then
	        Vga_rgb_n <= "00000000";
		 else
		    Vga_rgb_n <= "10110011";
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 20*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 21*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 5*STATE_LEN then   
	     if Joy >= 9 then
	        Vga_rgb_n <= "00000000";
		 else
		    Vga_rgb_n <= "10110011";
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 21*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 22*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 5*STATE_LEN then  
	     if Joy >= 10 then
	        Vga_rgb_n <= "00000000";
		 else
		    Vga_rgb_n <= "10110011";
		 end if;
		

      --饥饿度图标,为嘴巴
      elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 4*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 7*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 9*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 10*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
		 
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 3*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 10*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 11*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 7*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 8*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 10*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 11*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
		 
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 2*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 3*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 11*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 12*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 4*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 5*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 11*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 12*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 8*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 9*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 11*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 12*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
		 
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 2*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 3*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 13*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 6*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 9*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 13*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
		 
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 2*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 3*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 13*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 14*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 5*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 6*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 13*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 14*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
		 
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 3*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 4*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 14*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 15*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 6*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 7*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 14*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 15*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 8*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 10*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 14*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 15*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
		 
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 4*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 7*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 15*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 16*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 8*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 10*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 15*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 16*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
      	  
		  
	  --饥饿度边框
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 11*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 23*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 11*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 12*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 11*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 13*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 22*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 23*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 13*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 11*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 23*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 13*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 14*STATE_LEN then   
	     Vga_rgb_n <= "00000000";
		  
		  
	  --Stomach
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 12*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 13*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 13*STATE_LEN then  
	     if Stomach >= 1 then
	        Vga_rgb_n <= "00000000";
		 else
		    Vga_rgb_n <= "10110011";
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 13*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 14*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 13*STATE_LEN then   
	     if Stomach >= 2 then
	        Vga_rgb_n <= "00000000";
		 else
		    Vga_rgb_n <= "10110011";
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 14*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 15*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 13*STATE_LEN then   
	     if Stomach >= 3 then
	        Vga_rgb_n <= "00000000";
		 else
		    Vga_rgb_n <= "10110011";
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 15*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 16*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 13*STATE_LEN then  
	     if Stomach >= 4 then
	        Vga_rgb_n <= "00000000";
		 else
		    Vga_rgb_n <= "10110011";
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 16*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 17*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 13*STATE_LEN then  
	     if Stomach >= 5 then
	        Vga_rgb_n <= "00000000";
		 else
		    Vga_rgb_n <= "10110011";
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 17*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 18*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 13*STATE_LEN then   
	     if Stomach >= 6 then
	        Vga_rgb_n <= "00000000";
		 else
		    Vga_rgb_n <= "10110011";
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 18*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 19*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 13*STATE_LEN then   
	     if Stomach >= 7 then
	        Vga_rgb_n <= "00000000";
		 else
		    Vga_rgb_n <= "10110011";
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 19*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 20*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 13*STATE_LEN then  
	     if Stomach >= 8 then
	        Vga_rgb_n <= "00000000";
		 else
		    Vga_rgb_n <= "10110011";
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 20*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 21*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 13*STATE_LEN then   
	     if Stomach >= 9 then
	        Vga_rgb_n <= "00000000";
		 else
		    Vga_rgb_n <= "10110011";
		 end if;
	  elsif Vga_hsync_cnt >= H_ACTIVE_MIN + 21*STATE_LEN and Vga_hsync_cnt < H_ACTIVE_MIN + 22*STATE_LEN and Vga_vsync_cnt >= V_ACTIVE_MIN + 12*STATE_LEN and Vga_vsync_cnt < V_ACTIVE_MIN + 13*STATE_LEN then  
	     if Stomach >= 10 then
	        Vga_rgb_n <= "00000000";
		 else
		    Vga_rgb_n <= "10110011";
		 end if;
			
			
			
	  --
	  --宠物显示区
	  --	
      else
         Vga_rgb_n <= "10110011";
      end if;
	  
   end process;
   
end behave;