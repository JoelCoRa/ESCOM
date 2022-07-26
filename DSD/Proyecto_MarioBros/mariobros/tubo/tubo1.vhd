library ieee;
use ieee.std_logic_1164.all;

entity tubo1 is port(
			clk,reset: in std_logic;
			Q: out std_logic_vector(6 downto 0));
  attribute pin_numbers of tubo1: entity is "clk:1 reset:2 Q(6):23 Q(5):22 Q(4):21 Q(3):20 Q(2):19 Q(1):18 Q(0):17";
end entity;

architecture funcion of tubo1 is

type estados is(e0,e1,e2,e3,e4,e5,e6,e7);
signal sig:estados;
begin
process(clk,reset)
begin
if(clk'event and clk='1')then
	if(reset='1')then
	sig<=e0;
	end if;
		case sig is
			when e0=>
			Q<="0000001";
			sig<=e1;
			when e1=>
			Q<="0000011";
			sig<=e2;
			when e2=>
			Q<="0000110";
			sig<=e3;
			when e3=>
			Q<="0001100";
			sig<=e4;
			when e4=>
			Q<="0011000";
			sig<=e5;
			when e5=>
			Q<="0110000";
			sig<=e6;
			when e6=>
			Q<="1100000";
			sig<=e7;
			when e7=>
			Q<="1000001";
			sig<=e1;
		 end case;
		 end if;
		 end process;
		 end architecture;
