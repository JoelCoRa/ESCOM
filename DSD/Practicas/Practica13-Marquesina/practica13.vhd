library ieee;
use ieee.std_logic_1164.all;
use work.std_arith.all;
use ieee.numeric_std.all;

entity marquesina is port(
	clk: in std_logic;
	display :out std_logic_vector(6 downto 0);
	ctrl: out std_logic_vector(2 downto 0));
	attribute pin_numbers of marquesina: entity is "clk:1 display(6):23 display(5):22 display(4):21 display(3):20 display(2):19 display(1):18 display(0):17 ctrl(1):16 ctrl(0):15 ";
	end entity;


	architecture relojlento of marquesina is
	--type estados is(L1);
	constant LH: std_logic_vector (6 downto 0):= "1011100";
	--constant LI: std_logic_vector (6 downto 0):= "1001111";
	--constant D1: std_logic_vector (1 downto 0):= "01";
	--constant D2: std_logic_vector (1 downto 0):= "11";
	--constant D3: std_logic_vector (1 downto 0):= "10";
	type max_estados is(E1,E2,E3);
	signal x:max_estados;
	--signal conteo2: std_logic_vector(1 downto 0);
	
	begin 
	process(clk)
	begin
	if(clk'event and clk='1')then
		case x is
	 	when E1=>
			ctrl<="001";
			display<=LH;
			x<=E2;
	 	when E2=>
			ctrl<="010";
			display<=LH;
			x<=E3;
	 	when E3=>
			ctrl<="100";
			display<=LH;
			x<=E1;
		end case;
		end if;
	end process;
	end architecture;