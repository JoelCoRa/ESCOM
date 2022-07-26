library ieee;
use ieee.std_logic_1164.all;

entity deco is
port(
	ent:in std_logic_vector(2 downto 0);
	A:in std_logic;
	sal:out std_logic_vector(6 downto 0)
	
);
end deco;
architecture adeco of deco is
begin
	process(ent,A)
	begin
		if(A = '1')then
			if(ent = "000")then
				sal <= "0000001";
		   	elsif(ent = "001")then
				sal <= "1001111";
			elsif(ent = "010")then
				sal <= "0010010";
			elsif(ent = "011")then
				sal <= "0000110";
			elsif(ent = "100")then
				sal <= "1001100";
			elsif(ent = "101")then
				sal <= "0100100";
			elsif(ent = "110")then
				sal <= "0100000";
			else
				sal <= "0001111";
			end if;
		 else
		 	sal <= "1111111";
		end if;
	end process;
end adeco;