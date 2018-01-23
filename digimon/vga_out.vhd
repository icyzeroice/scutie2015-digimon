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
   port (
      -- INPUT:
      --   Clock & Reset
      clk, rst: in std_logic;

      -- OUTPUT:
      --   VGA pin
      vga_rgb: out std_logic_vector( 7 downto 0 ); -- R2, R1, R0, G2, G1, G0, B1, B0
		vga_vsync, vga_hsync: out std_logic
   );
end entity;

architecture behave of vga_out is
   type state is (present_state, next_state);
   signal vga_hsync_state, vga_vsync_state :state;
   signal vga_hsync_cnt, vga_vsync_cnt :std_logic_vector( 7 downto 0 ) := "0000000000000000";
begin

-- Reset --
reset: process(clk, rst)
begin
   if rst = '0'
      vga_rgb <= "00000000";
      vga_hsync <= '0';
      vga_vsync <= '0';
   else
      
   end if
end process;

-- Horizonal counter --
horizonal: process(clk)
begin
   
end process;


-- Vertical counter --
vertical: process(clk)
begin

end process;


-- Get data from RAM and show on the screen --
ram_data: process(clk)
begin

end process;


end architecture;