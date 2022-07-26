library ieee;
use ieee.std_logic_1164.all;

entity cadena is port(
	clk: in std_logic;
	display :out std_logic_vector(6 downto 0);
	ctrl: out std_logic_vector(2 downto 0));
	attribute pin_numbers of cadena: entity is "clk:1 display(6):23 display(5):22 display(4):21 display(3):20 display(2):19 display(1):18 display(0):17 ctrl(2):16 ctrl(1):15 ctrl(0):14";
	end entity;

	architecture Poli of cadena is

	type estados is(I,P,N);
	signal y: estados;
	constant LI: std_logic_vector (6 downto 0):= "1001111";
	constant LP: std_logic_vector (6 downto 0):= "0011000";
	constant LN: std_logic_vector (6 downto 0):= "0001001";


	begin
	process(clk)
	begin
	if(clk'event and clk='1') then
	case y is 
	when I =>
	ctrl<="100";
	display<=LI;
	y<=P;
	when P=>
	ctrl<="010";
	display<=LP;
	y<=N;
	when N=>
	ctrl<="001";
	display<=LN;
	y<=I;
	end case;
	end if;
	end process;
	end architecture;
