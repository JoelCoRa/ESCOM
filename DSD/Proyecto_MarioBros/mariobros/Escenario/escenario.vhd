library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity escenario is port(
	clk: in std_logic;
	output: out std_logic_vector(6 downto 0);
	reset: in std_logic
	);
	attribute pin_numbers of escenario: entity is "clk:1 reset:2 output(6):23 output(5):22 output(4):21 output(3):20 output(2):19 output(1):18 output(0):17";
   end entity;

   architecture funcion of escenario is

	
    type estados is (s0,s1,s2,s3,s4,s5);
	signal state: estados;
	begin
	process(clk,reset)
	begin
	if(clk'event and clk='1')then
		if reset='1' then
	   		state<=s0;
	 	    end if;
	case state is
		when s0=>
		output<="0111100";
		state<=s1;
		when s1=>
		output<="1111000";
		state<=s2;
		when s2=>
		output<="1110000";
		state<=s3;
		when s3=>
		output<="1100000";
		state<=s4;
		when s4=>
		output<="1000000";
		state<=s5;
		when s5=>
		output<="0000000";
		state<=s0;
		end case;
		end if;
	end process;
	end architecture;










