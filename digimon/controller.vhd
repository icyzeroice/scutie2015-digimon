library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.ALL;

entity controller is
   port(Second        :in std_logic;--用于播放动画的延迟的时钟,1秒钟1正脉冲
	   Low_sw_an     :in std_logic_vector (2 downto 0 );
	  
	   Vga_choose_n   : out integer range 0 to 9;
      Joy_n          : out integer range 0 to 10;
      Stomach_n      : out integer range 0 TO 10);
end entity;

architecture nan OF controller IS


   --宠物状态
   signal Joy:integer range 0 to 10;
   signal Stomach:integer range 0 TO 10;
   
   --用于选择输出什么宠物图案
   signal Vga_choose : integer range 0 to 9;
   
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
   
   --输入
   signal Reset:std_logic;
   signal Play:std_logic;
   signal Feed:std_logic;
   
   --控制器状态
   type con_state is (con_active, con_feed, con_play, con_dead);
   signal Controller_state : con_state;
   
begin

Vga_choose_n <= Vga_choose;
Joy_n <= Joy;
Stomach_n <= Stomach;

--按键赋值
Reset <= Low_sw_an(0);
Feed <= Low_sw_an(1);
Play <= Low_sw_an(2);

--游戏初始化
process(Reset, Second, Feed, Play)
	variable minute:integer range 0 TO 14;
	variable time:integer range 0 TO 5;
begin
	if Reset = '1' then 
		--参数初始化
		Joy <= 5;
		Stomach <= 5;
		Controller_state <= con_active;
		--播放初始化动画
		Vga_choose <= ACTIVE_ONE;
	elsif Controller_state = con_active and Feed = '1' then
		--喂食
		if Stomach < 10 then
			Stomach <= Stomach + 1;
		end if;
		--播放喂食动画
		Controller_state <= con_feed;
	elsif Controller_state = con_active and  Play = '1' then
		if Joy < 10 then
			Joy <= Joy + 1;
		end if;
		--播放陪玩动画
		Controller_state <= con_play;
	elsif rising_edge(Second) then
		--根据时间掉欢乐度和饱食度
		if Controller_state = con_active then
			Minute:=Minute+1;
			if Minute = 14 then
				if Joy > 0 and Stomach > 0 then 
					Joy <= Joy - 1;
					Stomach <= Stomach - 1;
				else 
					Controller_state <= con_dead;
					--触发死亡场景
					--等待reset
					Vga_choose <= DEAD_ONE;
				end if;
				Minute := 0;
			end if;
		elsif Controller_state = con_feed then
			time:=time+1;
			if time = 1 then
				Vga_choose <= FEED_ONE;
			elsif time = 2 then
				Vga_choose <= FEED_TWO;
			elsif time = 3 then
				Vga_choose <= FEED_THREE;
			elsif time = 4 then
				Vga_choose <= FEED_FOUR;
			else
				Vga_choose <= ACTIVE_ONE;
				time := 0;
				Controller_state <= con_active;
			end if;
		elsif Controller_state = con_play then
			time:=time+1;
			if time = 1 then
				Vga_choose <= PLAY_ONE;
			elsif time = 2 then
				Vga_choose <= PLAY_TWO;
			elsif time = 3 then
				Vga_choose <= PLAY_THREE;
			elsif time = 4 then
				Vga_choose <= PLAY_FOUR;
			else
				Vga_choose <= ACTIVE_ONE;
				time := 0;
				Controller_state <= con_active;
			end if;
		end if;
	end if;
end process;
end nan;