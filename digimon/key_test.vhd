library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity key_test is
  port(clk, sw2: in std_logic;
       led_show: out std_logic);
end entity;

architecture behave of key_test is
  signal key_rst, key_rst_an, key_rst_r, low_sw, low_sw_r, low_sw_an: std_logic;
  signal count: std_logic_vector(19 downto 0);
  type state is (s0, s1);
  signal present_state, next_state: state;
  
  constant zero: std_logic := '0';
  constant one: std_logic := '1';
begin

-- avoid button shaking
process(clk)
begin
  if clk'event and clk='1' then
    key_rst <= sw2;
  end if;
end process;

process(clk)
begin
  if clk'event and clk = '1' then
    key_rst_r <= key_rst;
  end if;
end process;

key_rst_an <= key_rst_r and not key_rst;

process(clk)
begin
  if clk'event and clk = '1' then
    if key_rst_an = '0' then
      count <= count + '1';
    else count <= (others => '0');
    end if;
  end if;
end process;

process(clk)
begin
  if clk'event and clk = '1' then
    if count = "11111111111111111111" then
      low_sw <= sw2;
    else null;
    end if;
  end if;
end process;

process(clk)
begin
  if clk'event and clk = '1' then
    low_sw_r <= low_sw;
  end if;
end process;

low_sw_an <= low_sw_r and not low_sw;

process(clk)
begin
  if clk'event and clk='1' then
    if low_sw_an = '1' then
      present_state <= next_state;
    end if;
  end if;
end process;

-- light the digital tubes according to the button click number
process(clk)
begin
	  if present_state = s0 then
		next_state <= s1;
		led_show <= zero;
	  elsif present_state = s1 then
		next_state <= s0;
		led_show <= one;
	  else null;
	  end if;
end process;

end behave;