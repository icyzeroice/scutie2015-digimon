library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.ALL;

entity dead_warning is
   port(Second       :in std_logic;
	  Joy          : in integer range 0 to 10;
      Stomach      : in integer range 0 TO 10;
      
	  warn_out : out std_logic);
end entity;

architecture nan OF dead_warning IS
begin
process(Second)
variable warn_out_n : std_logic;
begin
   if rising_edge(Second) then
      if Joy = 0 or Stomach = 0 then
	     warn_out_n := '1';
      elsif Joy <= 2 or Stomach <= 2 then
	     warn_out_n := not warn_out_n;
	  end if;
	  warn_out <= warn_out_n;
   end if;
end process;

end nan;