library ieee;
use ieee.std_logic_1164.all;

entity siguelineas is
port(
	SI,SD:in std_logic;
	MI,MD:out std_logic
);
end siguelineas;

architecture Asiguelineas of siguelineas is
begin 
	MI <= (SI AND SD) OR ((NOT SI)AND SD);
	MD <= (SI AND SD) OR ((NOT SD)AND SI);
end Asiguelineas;
