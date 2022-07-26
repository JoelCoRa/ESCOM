library ieee;
use ieee.std_logic_1164.all;
entity sumres2 is
port(
	A,B,E,F : in std_logic_vector(1 downto 0);
	CinSum,CinRes : in std_logic;
	S, R : out std_logic_vector (1 downto 0);
	CoutSum, CoutRes : out std_logic
);
end sumres2;
architecture asumres2 of sumres2 is
signal C,D : std_logic_vector(2 downto 0);
begin
	--Sumador de 2 bits
	C(0) <= CinSum;	
	S(0) <= A(0) XOR B(0) XOR C(0);
	C(1) <= (A(0) AND C(0)) OR (A(0) AND B(0)) OR (B(0) AND C(0));
	S(1) <= A(1) XOR B(1) XOR C(1);
	C(2) <= (A(1) AND C(1)) OR (A(1) AND B(1)) OR (B(1) AND C(1));
	CoutSum <= C(2);
	
		--Restador de 2 bits
	D(0) <= CinRes;	
	R(0) <= E(0) XOR F(0) XOR D(0);
	D(1) <= (NOT E(0) AND D(0)) OR (NOT E(0) AND F(0)) OR (F(0) AND D(0));
	R(1) <= E(1) XOR F(1) XOR D(1);
	D(2) <= (NOT E(1) AND D(1)) OR (NOT E(1) AND F(1)) OR (F(1) AND D(1));
	CoutRes <= D(2);
end asumres2;
