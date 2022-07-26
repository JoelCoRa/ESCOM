library ieee;
use ieee.std_logic_1164.all;

entity Mux4 is 
port(
	E0, E1, E2, E3: in std_logic_vector(1 downto 0);
	sel: in std_logic_vector(1 downto 0);
	Sal: out std_logic_vector(1 downto 0)
);
end Mux4;
architecture aMux4 of Mux4 is
begin
	Sal <= E0 when sel = "00" else
		   E1 when sel = "01" else
		   E2 when sel = "10" else
		   E3 when sel = "11" else
		   "00";
end aMux4;
