library ieee;
use ieee.std_logic_1164.ALL;

entity second is
   port(Clk :  in  std_logic;
        q   :  out std_logic);
end second;

architecture behav of second is
   begin
   process(Clk)
   
      variable time:integer range 0 to 50000000;
	  
      begin
      if rising_edge(Clk) then
         time:=time+1;
		 
	     if time<=25000000 then
	        q<='1';
	     else 
	        if time<50000000 then
	   	       q<='0';
	   	    else
		       time:=0;   
		    end if;
	     end if;
      end if;
   end process;
END behav;