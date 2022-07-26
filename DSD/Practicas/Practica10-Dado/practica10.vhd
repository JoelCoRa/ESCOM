library ieee;
use ieee.std_logic_1164.all;

entity dado is
port(
	clk,sw:in std_logic;
	display:out std_logic_vector(2 downto 0)
	);
	attribute pin_numbers of dado: entity is "clk:1 sw:2 display(2):23 display(1):22 display(0):21";
	end entity;

	architecture girar of dado is 
	type estados is (C1,C2,C3,C4,C5,C6);
	signal y: estados;

	begin 
	process(clk)
	begin
	if(clk'event and clk='1')then
	case y is
	when C1=>
	if(sw='1')then
	display <= "001";
	y<=C1;
	else
	y<=C2;
	end if;
	when C2=>
	if(sw='1')then
	display <= "010";
	y<=C2;
	else
	y<=C3;
	end if;
	when C3=>
	if(sw='1')then
	display <= "011";
	y<=C3;
	else
	y<=C4;
	end if;
	when C4=>
	if(sw='1')then
	display <= "100";
	y<=C4;
	else
	y<=C5;
	end if;
	when C5=>
	if(sw='1')then
	display <= "101";
	y<=C5;
	else
	y<=C6;
	end if;
	when C6=>
	if(sw='1')then
	display <= "110";
	y<=C6;
	else
	y<=C1;
	end if;
	end case;
	end if;
	end process;

	--process(y)
	--begin 
	--case y is
	--when C1 => display <= "001";
	--when C2 => display <= "010";
	--when C3 => display <= "011";
	--when C4 => display <= "100";
	--when C5 => display <= "101";
	--when C6 => display <= "110";
	--end case;
	--end process;
	
	end architecture;

