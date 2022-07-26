library ieee;
use ieee.std_logic_1164.all;

entity ffd is
library ieee;
use ieee.std_logic_1164.all;

entity registro is
port
(	
	clk, clr: in std_logic;
	opc: in std_logic_vector(1 downto 0);
	Ent: in std_logic_vector(2 downto 0);
	Sal: out std_logic_vector (2 downto 0)
);
architecture aregistro of registro is
signal aux: std_logic_vector(2 downto 0);
begin
	Sal <= aux;
	process (clk,clr)
	variable Auxi: std_logic;
	begin
		if clr='1' then
			aux <= "000";
		elsif(clk'event and clk='1') then
			if opc="00" then --Cargar Dato
				aux(2 downto 0)<=Ent(2 downto 0);
			elsif opc="01" then --Retener dato
				aux(2 downto 0) <= aux(2 downto 0);

			elsif opc ="11" then --Desplazamiento a la Izquierda
				Auxi:=aux(2);
				aux(2)<=aux(1);
				aux(1)<=aux(0);
				aux(0)<=Auxi;

			elsif opc ="10" then --Dezplazamiento a la Derecha
				Auxi:=aux(0);
				aux(0)<=aux(1);
				aux(1)<=aux(2);
				aux(2)<=Auxi;		
			end if;
		end if;
	end process;
end aregistro;
