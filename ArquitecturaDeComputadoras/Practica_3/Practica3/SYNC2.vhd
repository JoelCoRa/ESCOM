----	Práctica 3. Implementación de una Arquitectura RISC con Periféricos----
----	Elaborado por: Angel Vargas, Pablo Mejía, Daniel Uribe, Enrique Ortiz, Leonel Rodriguez, Itzel Ramírez, Julio Hernández, Joel Colín y Eliú Mendoza
----	Fecha:	16 de Junio de 2022

library ieee;
use ieee.std_logic_1164.all;
use work.ctrl.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity SYNC2 is
  port (
    CLK: in std_logic; 								-- Reloj 
	 U: IN integer; 								-- Primera variable 
	 V: IN integer; 								-- Segunda variable
	 W: IN integer; 								-- Tercera variable
	 CTRL: IN STD_LOGIC_VECTOR; 						-- Variable de control
	 -- DATO: IN STD_LOGIC;
    HSYNC, VSYNC: out std_logic;						-- Sincronización
    R, G, B: out std_logic_vector(7 downto 0) 	-- RGB
  ) ;
end SYNC2;


architecture MAIN of SYNC2 is

    signal HPOS: integer Range 0 to 1688 := 0;
    signal VPOS: integer Range 0 to 1688 := 0;
    signal U1: integer Range -320 to 320  := 0; -- Variable auxiliar para el eje X1
    signal V1: integer Range -256 to 256  := 0; -- Variable auxiliar para el eje Y1
	 
	 signal data_frame: std_logic_vector(21 downto 0);
	 
begin


    process(CLK)

        begin

            if (CLK'Event and CLK = '1') then
						
												
					 if (HPOS  = 1048 OR VPOS = 554) then
								 
						R<=X"FF";
						G<=X"FF";
						B<=X"FF";
					
					else  
						R<=X"00";
						G<=X"00";
						B<=X"00";
					end if;
					
					--Dibuja la linea
				
				IF CTRL = "00" THEN
							U1 <= U;
							V1 <= V;
						END IF;
							
						if ( (554 - VPOS) = (U1)*( HPOS -1048 ) + (V1)*8) THEN	
							
							IF CTRL = "00" THEN
								R<=X"33";
								G<=X"FF";
								B<=X"F6";
							ELSE
								R<=X"96";
								G<=X"96";
								B<=X"96";
							END IF;
							
						end if;
				
					
					
					
					
               if (HPOS < 1688) then 
								HPOS <= HPOS + 1;
               else
							HPOS <= 0;						-- Si HPOS llega al final de la linea, se reinicia a 0
							if(VPOS < 1066) then
                        VPOS <= VPOS + 1;
							
							
                    else
                        VPOS <= 0;                        
                    end if;
                end if;
					  
					  
					  
                if(HPOS > 48 and HPOS < 160) then
                    HSYNC <= '0';
                else 
                    HSYNC <= '1';
                end if;

                if(VPOS > 0 and VPOS < 4) then
                    VSYNC <= '0';
                else
                    VSYNC <= '1';
                end if;

            end if;
    end process;
	 
end MAIN ; -- MAIN