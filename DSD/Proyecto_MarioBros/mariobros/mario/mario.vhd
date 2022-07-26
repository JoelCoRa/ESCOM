library ieee;
use ieee.std_logic_1164.all;

entity mario is port(
		clk: in std_logic;
		sw:in std_logic;
		Q: out std_logic_vector(2 downto 0));
		attribute pin_numbers of mario: entity is "clk:1 sw:2 Q(2):23 Q(1):22 Q(0):21";
		end entity;

	 architecture brincar of mario is
	 type estados is(s0,s1,s2,s3);
	 signal sig:estados;

	 begin
	 process(clk)
	 begin
	 if(clk'event and clk='1')then
	 if sw='1' then
	 	case sig is
			when s0=>
				sig<=s1;
				Q<="001";
			when s1=>
				sig<=s2;
				Q<="010";
			 when s2=>
				sig<=s3;
				Q<="100";
			  when s3=>
			  	sig<=s0;
				Q<="010";
			  when others=>
			    sig<=s0;
				Q<="001";
			 end case;
		else
			case sig is
			 when s0=>
			 	sig<=s0;
				Q<="001";
			  when s1=>
			  	sig<=s0;
				Q<="010";
			   when s2=>
			    sig<=s1;
				Q<="100";
			   when s3=>
			    sig<=s0;
				Q<="010";
			   when others=>
			    sig<=s0;
				Q<="001";
			   end case;
			end if;
			end if;
			end process;
			end architecture;

