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
      clk          : in std_logic;
      rst          : in std_logic;

      vga_rgb      : out std_logic_vector (7 downto 0); -- R2, R1, R0, G2, G1, G0, B1, B0
		vga_vsync    : out std_logic;
      vga_hsync    : out std_logic
   );
end entity;

architecture behave of vga_out is
   component ip_ram is
      port (
         address  : in std_logic_vector (4 downto 0);
         clock    : in std_logic;
         data     : in std_logic_vector (7 downto 0);
         rden     : in std_logic;
         wren     : in std_logic;

         q        : out std_logic_vector (7 downto 0)
      );
   end component;

   type state is (present_state, next_state);
   signal vga_hsync_state  : state;
   signal vga_vsync_state  : state;
   signal vga_hsync_cnt    : std_logic_vector (7 downto 0);
   signal vga_vsync_cnt    : std_logic_vector (7 downto 0);

   signal ram_address      : std_logic_vector (4 downto 0);
   signal ram_data         : std_logic_vector (7 downto 0);
   signal ram_rden         : std_logic;
   signal ram_wren         : std_logic;
   signal ram_q            : std_logic_vector (7 downto 0);
begin

-- instance of ip_ram --
ip_ram_inst: ip_ram port map(
   ram_address,
   clk,
   ram_data,
   ram_rden,
   ram_wren,
   ram_q
);

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