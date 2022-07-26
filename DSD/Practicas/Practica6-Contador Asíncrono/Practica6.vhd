library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity contAsinc is
port(
	clk,clr,set: in std_logic;
	T: in std_logic_vector(4 downto 0);
	Q: inout std_logic_vector(4 downto 0)
);
end entity;

architecture FunCont of ContAsinc is
--signal cont: std_logic_vector(4 downto 0);
begin
	process(clk,clr,Q)
	begin
		if(clk'event and clk ='1')then
			Q <= Q-1;
			if(clr = '1' OR Q <="11001")then
				Q <= "11111";	
			end if;
		end if;	 
	end process;
end architecture;