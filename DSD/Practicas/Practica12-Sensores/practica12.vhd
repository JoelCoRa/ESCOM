library ieee;
use ieee.std_logic_1164.all;
use work.std_arith.all;

entity sensor is port(
	clk: in std_logic;
	Q0,Q1,Q2,Q3,Q4,suma,resta:out std_logic;
	sen: in std_logic_vector(1 downto 0));
	attribute pin_numbers of sensor: entity is "clk:1 sen(1):2 sen(0):3 Q0:23 Q1:22 Q2:21 Q3:20 Q4:19 suma:18 resta:17"; 
	end entity;

	architecture funcion of sensor is

	type estados is (E0,E1,E2,E3,E4,E5,E6,E7);
	signal y:estados;

	begin
	process(clk,sen)
	begin
	if(clk'event and clk='1')then
	case y is
	when E0=>  --E0
	Q0<='1';
	if(sen="10")then
	y<=E1;
	Q0<='0';
	Q1<='1';
	suma<='0';
	resta<='0';
	elsif(sen="01")then
	y<=E4;
	Q1<='1';
	Q0<='0';
	resta<='0';
	suma<='0';
	elsif(sen="00")then
	y<=E0;
	elsif(sen="11")then
	y<=E7;
	Q4<='1';
	Q0<='0';
	end if;
	when E1=>		--E1
	Q1<='1';
	if(sen="11")then
	y<=E2;
	Q1<='0';
	Q2<='1';
	elsif(sen="00")then
	y<=E0;
	Q0<='1';
	Q1<='0';
	end if;
	when E2=> ---E2
	Q2<='1';
	if(sen="01")then
	y<=E3;
	Q3<='1';
	Q2<='0';
	elsif(sen="10")then
	y<=E1;
	Q1<='1';
	Q2<='0';
	end if;
	when E3=>		--E3
	Q3<='1';
	if(sen="11")then
	y<=E2;
	Q2<='1';
	Q3<='0';
	elsif(sen="00")then
	y<=E0;
	Q3<='0';
	suma<='1';
	Q0<='1';
	elsif(sen="11")then
	y<=E2;
	Q2<='1';
	Q3<='0';
	end if;
	when E4=>		--E4
	Q1<='1';
	if(sen="11")then
	y<=E5;
	Q2<='1';
	Q1<='0';
	elsif(sen="00")then
	y<=E0;
	Q0<='1';
	Q1<='0';
	end if;
	when E5=>		--E5
	Q2<='1';
	if(sen="10")then
	y<=E6;
	Q3<='1';
	Q2<='0';
	elsif(sen="01")then
	y<=E4;
	Q1<='1';
	Q2<='0';
	end if;
	when E6=>			--E6
	Q3<='1';
	if(sen="00")then
	y<=E0;
	resta<='1';
	Q3<='0';
	Q0<='1';
	elsif(sen="11")then
	y<=E5;
	Q2<='1';
	Q3<='0';
	end if;
	when E7=>		--E7
	Q4<='1';
	if(sen="00")then
	y<=E0;
	Q0<='1';
	Q4<='0';
	elsif(sen="10")then
	y<=E1;
	Q1<='1';
	Q4<='0';
	elsif(sen="01")then
	y<=E4;
	Q2<='1';
	Q4<='0';
	end if;
	end case;
	end if;
	end process;
	end architecture;



