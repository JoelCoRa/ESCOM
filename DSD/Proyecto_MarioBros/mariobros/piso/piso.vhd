library ieee;
use ieee.std_logic_1164.all;

entity piso is port(
		clk:in std_logic;
		Q:out std_logic);
		attribute pin_numbers of piso: entity is "clk:1 Q:23";
		end entity;

	  architecture funcion of piso is

	  begin
	  process(clk)
	  begin
	  if(clk'event and clk='1')then
	  Q<='1';
	  end if;
	  end process;
	  end architecture;
