			
			
			-- Práctica 1. Aqrquitectura de 8 Bits
			-- Se consideró implemntar paquetes, para trabajar en varios programas y no en uno solo 
			-- Programa de la Unidad de Control, con 20 instrucciones para una arquitectura de 8 bits 
			-- Elaborado por: Itzel Guadalupe Ramírez Jiménez , Joel Colin Ramiro y Julio Cesar Hernández Reyes
			-- Fecha: 10/MAR/2022
			
			-- ----------------------------
			-- Se declaran las bibliotecas
         -- ----------------------------			
			LIBRARY ieee;
			USE ieee.std_logic_1164.ALL;
			USE ieee.std_logic_unsigned.ALL;
			USE ieee.numeric_std.ALL;

			-- ----------------------------
			-- Se declara la cabezera del paquete
         -- ----------------------------
			package ctrl_LCD is
			
				--Se crea un arreglo
				type arreglo is array (0 to 15) of std_logic_vector(7 downto 0);
				
				--Se declaran los caracteres codificados				
				constant msg1: arreglo := (X"FE",X"FE",X"FE",X"43",X"6C",X"41",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE");	 -- Cla
				constant msg2: arreglo := (X"FE",X"FE",X"FE",X"42",X"61",X"6A",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE"); 	 -- Baj
				constant msg3: arreglo := (X"FE",X"FE",X"FE",X"49",X"6E",X"58",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE"); 	 -- Inx
				constant msg4: arreglo := (X"FE",X"FE",X"FE",X"53",X"75",X"6D",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE");	 -- Sum
				constant msg5: arreglo := (X"FE",X"FE",X"FE",X"52",X"65",X"73",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE"); 	 -- Res
				constant msg6: arreglo := (X"FE",X"FE",X"FE",X"4D",X"75",X"6C",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE"); 	 -- Mul	
				constant msg7: arreglo := (X"FE",X"FE",X"FE",X"41",X"4E",X"44",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE"); 	 -- AND
				constant msg8: arreglo := (X"FE",X"FE",X"FE",X"4F",X"52",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE");   -- OR
				constant msg9: arreglo := (X"FE",X"FE",X"FE",X"4E",X"4F",X"54",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE");	 -- NOT
				constant msg10: arreglo := (X"FE",X"FE",X"FE",X"4E",X"4F",X"52",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE");  -- NOR
				constant msg11: arreglo := (X"FE",X"FE",X"FE",X"4E",X"41",X"4E",X"44",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE");  -- NAND
				constant msg12: arreglo := (X"FE",X"FE",X"FE",X"58",X"4F",X"52",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE");  -- XOR
				constant msg13: arreglo := (X"FE",X"FE",X"FE",X"58",X"4E",X"4F",X"52",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE");  -- XNOR
				constant msg14: arreglo := (X"FE",X"FE",X"FE",X"44",X"65",X"72",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE");  -- Der
				constant msg15: arreglo := (X"FE",X"FE",X"FE",X"49",X"7A",X"71",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE",X"FE");	 -- Izq				
				
				
				procedure Mensaje(constant ent :  std_logic_vector(4 downto 0);
										variable U   :  integer range 0 to 15;
										signal D     :  std_logic_vector(7 downto 0)
										);					
			end ctrl_LCD;
			
	-- ---------------------------------------------------
	-- Declaración del cuerpo del paquete
	-- ---------------------------------------------------
		package body ctrl_LCD is
			procedure mensaje (constant ent: std_logic_vector(4 downto 0); variable U: integer range 0 to 15; signal D: out std_logic_vector(7 downto 0))is
				begin						
					if ent = "00001" then
						D <= msg1(U);  --Las constantes del Mensaje1 salen en funcion de la variable U
					elsif ent = "00010" then
						D <= msg2(U);
					elsif ent = "00011" then
						D <= msg3(U);
					elsif ent = "00100" then
						D <= msg4(U);
					elsif ent = "00101" then
						D <= msg5(U);
					elsif ent = "00110" then
						D <= msg6(U);
					elsif ent = "00111" then
						D <= msg7(U);
					elsif ent = "01000" then
						D <= msg8(U);
					elsif ent = "01001" then
						D <= msg9(U);
					elsif ent = "01010" then
						D <= msg10(U);
					elsif ent = "01011" then
						D <= msg11(U);
					elsif ent = "01100" then
						D <= msg12(U);
					elsif ent = "01101" then
						D <= msg13(U);
					elsif ent = "01110" then
						D <= msg14(U);
					elsif ent = "01111" then
						D <= msg15(U);
					else
						D <= "000000000";
					end if;
			end mensaje;
		end ctrl_LCD;


