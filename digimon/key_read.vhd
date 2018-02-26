LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
ENTITY key_read IS
	PORT(clk:IN std_logic;
		 key:IN std_logic;
	     low_rst_an: out std_logic
		);
END ENTITY;
ARCHITECTURE nan OF key_read IS
signal key_rst:std_logic;
signal key_rst_r:std_logic;
signal key_rst_an:std_logic;
signal low_rst:std_logic;
signal low_rst_r:std_logic;
signal cnt:std_logic_vector(19 DOWNTO 0);

BEGIN
PROCESS(clk)
	BEGIN
	if clk'event and clk='1'THEN
		key_rst<=key;
	end if;
END PROCESS;
PROCESS(clk)
	BEGIN
	if clk'event and clk='1'THEN
		key_rst_r<=key_rst;
	end if;
END PROCESS;
key_rst_an<=NOT key_rst_r AND key_rst;
PROCESS(clk)
	BEGIN
	if clk'event and clk='1'THEN
		if key_rst_an='0'then
			cnt <= cnt + '1';
		else
			cnt<=(others=>'0');
		end if;
	end if;
END PROCESS;
PROCESS(clk)
	BEGIN
	if clk'event and clk='1'THEN
		if cnt="11111111111111111111"then
			low_rst<=key;
		else
			null;
		end if;
	end if;
END PROCESS;
PROCESS(clk)
	BEGIN
	if clk'event and clk='1'THEN
		low_rst_r<=low_rst;
	end if;
END PROCESS;
low_rst_an<=NOT low_rst_r AND low_rst;

END nan;
