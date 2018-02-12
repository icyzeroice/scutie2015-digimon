library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity key_read is
   port (clk             : in std_logic ;
        sw1 ,sw2 ,sw3    : in std_logic ;
        low_sw_an        : out std_logic_vector (2 downto 0 ) 
   ) ;
end entity ;
	
architecture ked_dec of key_read is
   signal key_rst : std_logic_vector (2 downto 0) ;
   signal key_rst_an : std_logic_vector (2 downto 0 ) ;
   signal key_rst_r :std_logic_vector (2 downto 0 ) ;
   signal low_sw : std_logic_vector (2 downto 0) ;
   signal low_sw_r :std_logic_vector (2 downto 0 ) ;  
   signal cnt : std_logic_vector (19 downto 0) ;
	
   begin
	
   process (clk)
      begin 
      if clk'event and clk = '1' then 
         key_rst <= sw3&sw2&sw1 ;
      end if ;
   end process ;
	
   process(clk)
      begin
      if clk'event and clk = '1' then 
         key_rst_r <= key_rst ;
      end if ;
   end process ;
	
   key_rst_an<= key_rst_r and not key_rst ;
	
   process (clk )
      begin
      if clk'event and clk = '1' then 
         if  key_rst_an = "000"  then 
            cnt <= cnt +  '1' ;
         else 
		    cnt <= (others => '0') ;
		 end if ;
      end if ;
   end process ;
	
   process (clk)
      begin
      if clk'event and clk = '1'  then 
         if cnt = "11111111111111111111" then 
            low_sw <= sw3&sw2&sw1 ;
         else 
		    null ;
         end if ;
      end if ;
   end process ;
	
   low_sw_an <= low_sw_r and not low_sw ;
	
end ked_dec ;
