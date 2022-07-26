library ieee;
use ieee.std_logic_1164.all;

entity cadena is port(
	clk: in std_logic;
	x: in std_logic;
	led: out std_logic);
	end entity;

architecture funcion of cadena is
	type estado is (S1,S2,S3,S4,S5);
	signal y: estado;

	begin
	process(clk)
	begin
	if(clk'event and clk='1') then
	case y is
	when S1 =>
	led<='0';
	if (x='1') then 
	y <= S2; 
	else 
	y <= S1; 
	end if;
	when S2 =>
	if (x='1') then
	y <= S3;
	else 
	y <= s1;
	end if;
	when s3 =>
	if(x='0')then
	y <= S4;
	else y <= S1;
	end if;
	when S4 =>
	if (x='1')then
	y <= S5;
	else y <= s1;
	end if;
	when S5 =>
	if(x='0')then
	led <= '1';
	y<= S1;
	else 
	y<=S2;
	end if;
	end case;
	end if;
	end process;

	end architecture;
