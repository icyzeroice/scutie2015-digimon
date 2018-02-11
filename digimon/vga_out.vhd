------------------------------------------------------------------------------
-- @name: VGA Display Module 800 * 600 @75Hz (50MHz)
-- @description: Fetch data from SDRAM using Qsys SDRAM IP in certain address,
--               and then cast them on the screen through VGA Display Module
--               that we write.
------------------------------------------------------------------------------
-- The standard we are using: 
-- Clock frequencies   : 50MHz
-- Horizonal timing information
--    sync pluse       : 128
--    back porch       : 88
--    active           : 800
--    front porch      : 40
--    all lines        : 1056
-- Vertical timing information
--    sync pluse       : 4
--    back porch       : 23
--    active           : 600
--    front porch      : 1
--    all lines        : 628
------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity vga_out is
   port(Clk          : in std_logic;
      Rst          : in std_logic;
	  Vga_rgb      : out std_logic_vector (7 downto 0); -- R2, R1, R0, G2, G1, G0, B1, B0
	  Vga_vsync    : out std_logic;
      Vga_hsync    : out std_logic);
end entity;

architecture behave of vga_out is
   signal Vga_hsync_cnt    : std_logic_vector (15 downto 0);
   signal Vga_vsync_cnt    : std_logic_vector (15 downto 0);
   signal Vga_hsync_cnt_n  : std_logic_vector (15 downto 0);
   signal Vga_vsync_cnt_n  : std_logic_vector (15 downto 0);
   
   signal Vga_vsync_n  : std_logic;
   signal Vga_hsync_n  : std_logic;
   signal Vga_rgb_n    : std_logic_vector (7 downto 0);
begin

-- 时序电路,用来给hsync_cnt,vsync_cnt,vga_vsync,vga_hsync,vga_rgb寄存器赋值
   process(Clk, Rst)
   begin
      if rst = '0' then
         Vga_rgb <= "00000000";
         Vga_hsync <= '0';
         Vga_vsync <= '0';
	     Vga_hsync_cnt <= "0000000000000000";
	     Vga_vsync_cnt <= "0000000000000000";
      else
         Vga_rgb <= Vga_rgb_n;
	     Vga_hsync <= Vga_hsync_n;
	     Vga_vsync <= Vga_vsync_n;
	     Vga_hsync_cnt <= Vga_hsync_cnt_n;
	     Vga_vsync_cnt <= Vga_vsync_cnt_n;
      end if;
   end process;

-- 组合电路,水平扫描
   process(Clk)
   begin
      if(Vga_hsync_cnt = 1056) then			--判断水平扫描时序    80+160+800+16 = 1056
         Vga_hsync_cnt_n <= "0000000000000000";	--如果水平扫描完毕,计数器将会被清零
      else
         Vga_hsync_cnt_n <= Vga_hsync_cnt + 1;		--如果水平没有扫描完毕,计数器继续累加
      end if;
   end process;


-- 组合电路,垂直扫描
   process(Clk)
   begin
      if((Vga_vsync_cnt = 625) and (Vga_hsync_cnt = 1056)) then --判断垂直扫描时序 3+21+600+1=625
         Vga_vsync_cnt_n <= "0000000000000000";					--如果垂直扫描完毕,计数器将会被清零
      elsif(Vga_hsync_cnt = 1056)	then	--判断水平扫描时序
	     Vga_vsync_cnt_n <= Vga_vsync_cnt + 1;	--如果水平扫描完毕,计数器继续累加
      else
	     Vga_vsync_cnt_n <= Vga_vsync_cnt;			--否则,计数器将保持不变
      end if;
   end process;

--组合电路，将HSYNC_A区域置0,HSYNC_B+HSYNC_C+HSYNC_D置1
   process(Clk)
   begin
      if(Vga_hsync_cnt < 80)	then			--判断水平扫描时序
         Vga_hsync_n <= '0';						--如果在HSYNC_A区域,那么置0
      else
         Vga_hsync_n <= '1';						--如果不在HSYNC_A区域,那么置1
      end if;
   end process;

--组合电路，将VSYNC_A区域置0,VSYNC_P+VSYNC_Q+VSYNC_R置1
   process(Clk)
   begin
      if(Vga_vsync_cnt < 3)	then			--判断水平扫描时序
         Vga_vsync_n <= '0';						--如果在VSYNC_O区域,那么置0
      else
         Vga_vsync_n <= '1';						--如果不在VSYNC_O区域,那么置1
      end if;
   end process;

--组合电路,用于显示图案
   process(Clk)
   begin
      if Vga_hsync_cnt > 240 and Vga_hsync_cnt < 1041 then   --80+160=240 and 80+160+800=1040
         Vga_rgb_n <= "11111111";
      else
         Vga_rgb_n <= "00000000";
      end if;
   end process;

end behave;