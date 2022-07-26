library ieee;
use ieee.std_logic_1164.all;

entity cont is
port(
	clk: in std_logic;
	Q: out std_logic_vector(2 downto 0));
	end entity;

	architecture conteo of cont is

	signal internalQ0,internalQ1,internalQ2: std_logic;
	signal notinternalQ0,notinternalQ1,notinternalQ2: std_logic;
	signal t1,t2,t0:std_logic;

	begin
	process(clk,t0)
	begin
	if(clk'event and clk='1')then
		if(t0='0')then
		internalQ0 <= internalQ0;
		else
		internalQ0 <= not internalQ0;
		end if;
		end if;
		end process;


	process(clk,t1)
	begin
	if(clk'event and clk='1')then
		if(t1='0')then
		internalQ1 <= internalQ1;
		else
		internalQ1 <= not internalQ1;
		end if;
		end if;
		end process;

	process(clk,t2)
	begin
	if(clk'event and clk='1')then
		if(t2='0')then
		internalQ2 <= internalQ2;
		else
		internalQ2 <= not internalQ2;
		end if;
		end if;
		end process;

		notinternalQ0 <= not internalQ0;
		notinternalQ1 <= not internalQ1;
		notinternalQ2 <= not internalQ2;

		t0<= (notinternalQ1 and notinternalQ2) or (notinternalQ0 and internalQ1 and internalQ2) or (internalQ0 and notinternalQ1) or (internalQ0 and notinternalQ2);
		t1<= notinternalQ1 or (internalQ0 and internalQ2) or (notinternalQ0 and notinternalQ2);
		t2<= (notinternalQ1 and internalQ2) or (internalQ0 and internalQ1 and notinternalQ2);
		
		Q(0)<= internalQ0;
		Q(1)<= internalQ1;
		Q(2)<= internalQ2;
		end architecture;


