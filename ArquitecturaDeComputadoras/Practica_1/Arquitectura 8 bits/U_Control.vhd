			
			
			-- Práctica 1. Aqrquitectura de 8 Bits
			--	Programa de la Unidad de Control, con 20 instrucciones para una arquitectura de 8 bits 
			-- Elaborado por: Itzel Guadalupe Ramírez Jiménez , Joel Colin Ramiro y Julio Cesar Hernández Reyes
			-- Fecha: 10/MAR/2022
			
			-- ----------------------------
			-- Se declaran las bibliotecas	
			-- ----------------------------
         LIBRARY ieee;
         USE ieee.std_logic_1164.ALL;
         USE ieee.std_logic_unsigned.ALL;   
         USE ieee.numeric_std.ALL;          
         USE work.ALU_P1.ALL;					  					  
         USE work.dis7seg.ALL;				  		
         
			-- ----------------------
         --	Se declara la entidad 
			-- ----------------------
         entity U_Control is 					
                 Port(
								clk, clr  	:	 in std_logic;    							-- Clock y Clear 
								ejec 		   :	 in std_logic;							      -- Boton de ejecucion de instrucciones
								entDatos   :	 in std_logic_vector(7 downto 0);		-- Entrada de datos
								entInstruc		:	 in std_logic_vector(3 downto 0);	--	Entradas de las Instrucciones
								busDatos   :   inout std_logic_vector(7 downto 0);    -- Bus de datos
								flag			:	 out std_logic_vector (2 downto 0);	   -- Flags/Banderas de estado
								busDirec		:	 out std_logic_vector(19 downto 0);	   -- Bus de direcciones de 19 bits
								busCtrl	   :   out std_logic_vector(4 downto 0);	   -- Bus de Control para SRAM
								display7    :   out std_logic_vector(55 downto 0)     -- Despliegue en 7 segmentos 
                     );    
         end entity;         
         
			-- ---------------------------
			-- Se declara la arquitectura
			-- ---------------------------
         architecture control of  U_Control is      
			
             -- Se declaran los registros       
             signal RegAcum         : std_logic_vector (15 downto 0):= "0000000000000000";  -- Registro Acumulador
             signal RegIndex	      : std_logic_vector (12 downto 0):= "0000000000000";	  -- Registro Indice
             signal RegAuxUC			: std_logic_vector(7 downto 0):= "00000000";				  -- Registro Auxiliar
             signal RegContProg		: unsigned(7 downto 0):= "00000000";   		           -- Registro Contador de programa				
             signal RegInst         : std_logic_vector(3 downto 0):= "0000";			 		  -- Registro de Instrucción
    
             begin
             
   UniCont : process(clk,clr,ejec,entDatos,entInstruc)                   
					begin 
						if (clr = '0') then          	        -- Condicional para verificar el reset
                     RegAcum <= "0000000000000000";     -- Limpia el acumulador de 16 bits
                     RegContProg <= "00000000";			  -- Limpia el contador de programa
                     RegIndex <= "0000000000000";		  -- Limpia el indice
         
                  elsif (clk' event and clk = '1') then                  
                       if (ejec = '0') then							--	Condicional para verificar si se pulsa el switch/botón de Ejecucion de Instrucciones                 
                        case entInstruc is									                          
                           when "0000" =>									-- 1.CLA (Borrar Acumulador)                           
										RegAcum <= "0000000000000000";					
										RegContProg <= RegContProg + 1;									
                              
                           when "0001" =>									-- 2.Cargar la parte baja del acumulador con un dato                           
										RegAcum(7 downto 0) <= entDatos;				
										RegContProg <= RegContProg + 1;			 					   
                           
                           when "0010" =>									-- 3.Cargar el registro INDICE con una direccion                           
										RegIndex (7 downto 0) <= entDatos;				                              
										busCtrl (0) <= '0'; 						-- Control del chip enable (con 0 se activa)
										busCtrl (1) <= '0'; 						-- Control de salida y entrada (con 0 es salida)                             
										busCtrl (2) <= '1'; 						--	Control de escritura/lectura (con 1 es solo lectura)
										busCtrl (3) <= '0'; 						
										busCtrl (4) <= '1'; 						                                                           
										busDirec <= std_logic_vector("0000000" & RegIndex);	-- Se carga la direccion del registro RegIndex con 11 ceros concatenados
										RegAcum <= std_logic_vector("00000000" & busDatos);	-- Se carga RegAcum con el dato de la direccion RegIndex              
										RegContProg <= RegContProg + 1;			   				   
                           
                           when "0011" =>									-- 4.Suma                         
										Suma(RegAcum(7 downto 0),entDatos,flag, RegAcum(7 downto 0));								
										RegContProg <= RegContProg + 1;			 					   
                           
                           when "0100" =>									-- 5.Resta
										Resta(RegAcum(7 downto 0), entDatos,flag, RegAcum(7 downto 0));												
										RegContProg <= RegContProg + 1;			 					   
                           
                           when "0101" =>				   				-- 6.Multiplicación
										Multi(RegAcum(7 downto 0),entDatos,flag,RegAcum);												
										RegContProg <= RegContProg + 1;								   
                             
                           when "0111" =>                         -- 7.Compuerta AND    
										Comp_AND(RegAcum(7 downto 0), entDatos, RegAcum(7 downto 0));	
										RegContProg <= RegContProg+1;										
										
                           when "1000" =>								   -- 8.Compuerta OR									
										Comp_OR(RegAcum(7 downto 0), entDatos, RegAcum(7 downto 0));
										RegContProg <= RegContProg+1;	
										
									when "1001" =>									-- 9.Compuerta NOT
										Comp_NOT(RegAcum(7 downto 0), entDatos, RegAcum(7 downto 0)); 
										RegContProg <= RegContProg+1;										
                           
                           when "1010" =>                         -- 10.Compuerta NOR
										Comp_NOR(RegAcum(7 downto 0), entDatos, RegAcum(7 downto 0)); 
										RegContProg <= RegContProg+1;										
                           
                           when "1011" =>                         -- 11.Compuerta NAND
										Comp_NAND(RegAcum(7 downto 0), entDatos, RegAcum(7 downto 0)); 
										RegContProg <= RegContProg+1;										
                           
                           when "1100" =>                         -- 12.Compuerta XOR
										Comp_XOR(RegAcum(7 downto 0), entDatos, RegAcum(7 downto 0)); 
										RegContProg <= RegContProg+1;										
                           
                           when "1101" =>                         -- 13.Compuerta XNOR
										Comp_XNOR(RegAcum(7 downto 0), entDatos, RegAcum(7 downto 0)); 
										RegContProg <= RegContProg+1;										
										
                           when "1110" =>								   -- 14.Corrimiento a la derecha
										CorrDer(RegAcum(7 downto 0), entDatos, RegAcum(7 downto 0)); 
										RegContProg <= RegContProg+1;										
	
                           when OTHERS =>									-- 15.Corrimiento a la izquierda
										CorrIzq(RegAcum(7 downto 0), entDatos, RegAcum(7 downto 0)); 
										RegContProg <= RegContProg+1;										
                                  
                         end case;                                       
                      else						 
                        -- -------------------------------------           
								-- Contador de Programa
                        -- ------------------------------------- 
                           RegAuxUC <= std_logic_vector(RegContProg);
                           d_conv(RegAuxUC (3 downto 0),display7(48 downto 42));   -- 1er nibble
									d_conv(RegAuxUC (7 downto 4),display7(55 downto 49));   -- 2do nibble
                           
								-- -------------------------------------           
								-- Registro Index
                        -- -------------------------------------  
                           d_conv(RegIndex (3 downto 0),display7(34 downto 28));   -- 1er nibble
									d_conv(RegIndex (7 downto 4),display7(41 downto 35));   -- 2do nibble
                                         
								-- -------------------------------------           
								-- Código de Instrucción
                        -- ------------------------------------- 
                           RegInst <= std_logic_vector(entInstruc);
                           d_conv(RegInst,display7(20 downto 14));   -- 1er nibble
                           RegInst <= "0000";
                           d_conv(RegInst,display7(27 downto 21));   -- 2do nibble
									
								-- -------------------------------------           
								-- Dato en el Acumulador
                        -- -------------------------------------        
                           d_conv(RegAcum(3 downto 0),display7(6 downto  0));   -- 1er  nibble 
                           d_conv(RegAcum(7 downto 4),display7(13 downto 7));   -- 2do nibble 
                      end if;													
                   end if;			     
             end process UniCont;   
         end architecture;
              