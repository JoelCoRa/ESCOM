
			-- Práctica 1. Aqrquitectura de 8 Bits			
			-- Paquete de la ALU, contiene: 
			-- Operaciones Aritméticas -> Suma(+), Resta(-) y Multiplicación(*) 
			-- Operaciones Lógicas -> AND, NAND, OR, NOR, XOR, XNOR y NOT 
			-- Corrimiento Der -> y Corrimiento Izq <-
			-- Elaborado por: Itzel Guadalupe Ramírez Jiménez , Joel Colin Ramiro y Julio Cesar Hernández Reyes
			-- Fecha: 10/MAR/2022
	
	      -- ----------------------------
			-- Se declaran las bibliotecas	
			-- ----------------------------	  
         LIBRARY ieee;
         USE ieee.std_logic_1164.ALL;
         USE ieee.std_logic_signed.ALL;          
         USE ieee.numeric_std.ALL;
          
			-- ----------------------
         --	Se declara el paquete de la ALU
			-- ----------------------          
				package ALU_P1 is   
			-- ----------------------
         --	Se declaran las señales y las constantes
			-- ----------------------            			 
             signal aux_ALU 		: std_logic_vector(15 downto 0) := "0000000000000000";  
             constant cero  		: std_logic_vector(7 downto 0) := "00000000" ;   		  
             constant esta_lleno : std_logic_vector(7 downto 0) := "00001111" ;    
              
              -- Se declara el header del procedimiento de la INSTRUCCIÓN de SUMA(+)
              procedure Suma (signal reg_ent1 : in std_logic_vector (3 downto 0);			 
                                  signal reg_ent2 : in std_logic_vector (3 downto 0);
                                  signal bnd 		 : out std_logic_vector (2 downto 0);
                            signal A    	 : out std_logic_vector (6 downto 0)
                                  );
              -- Se declara el header del procedimiento de la INSTRUCCIÓN de REStaTA(-)
              procedure Resta (signal reg_ent1 : in std_logic_vector (3 downto 0);			 
                                  signal reg_ent2 : in std_logic_vector (3 downto 0);
                                  signal bnd 		 : out std_logic_vector (2 downto 0);
                            signal A    	 : out std_logic_vector (6 downto 0)
                                  );
              -- Se declara el header del procedimiento de la INSTRUCCIÓN de MULtiTIPLICACIÓN(*)
              procedure Multi (signal reg_ent1 : in std_logic_vector (3 downto 0);				
                                  signal reg_ent2 : in std_logic_vector (3 downto 0);
                                  signal bnd 		 : out std_logic_vector (2 downto 0);
                            signal Am   	 : out std_logic_vector (15 downto 0)
                                  );
              -- Se declara el header del procedimiento de la INSTRUCCIÓN AND					
              procedure Comp_AND(signal reg_ent1 : in std_logic_vector(7 downto 0);			
                                  signal reg_ent2 : in std_logic_vector(7 downto 0);
                                  signal A    	 : out std_logic_vector(7 downto 0)
                                  );									
              -- Se declara el header del procedimiento de la INSTRUCCIÓN NAND
              procedure Comp_NAND(signal reg_ent1 : in std_logic_vector(7 downto 0);			
                                   signal reg_ent2 : in std_logic_vector(7 downto 0);
                                   signal A		  : out std_logic_vector(7 downto 0)
                                   );									
              -- Se declara el header del procedimiento de la INSTRUCCIÓN OR
              procedure Comp_OR(signal reg_ent1 : in std_logic_vector(7 downto 0);			
                                signal reg_ent2 : in std_logic_vector(7 downto 0);
                                signal A	  		: out std_logic_vector(7 downto 0)
                                );	
              -- Se declara el header del procedimiento de la INSTRUCCIÓN NOR					
              procedure Comp_NOR(signal reg_ent1 : in std_logic_vector(7 downto 0);			
                                  signal reg_ent2 : in std_logic_vector(7 downto 0);
                                  signal A	   	 : out std_logic_vector(7 downto 0)
                                  );									
              -- Se declara el header del procedimiento de la INSTRUCCIÓN XOR	  
              procedure Comp_XOR(signal reg_ent1 : in std_logic_vector(7 downto 0);			
                                  signal reg_ent2 : in std_logic_vector(7 downto 0);
                                  signal A	   	 : out std_logic_vector(7 downto 0)
                                  );
              -- Se declara el header del procedimiento de la INSTRUCCIÓN XNOR		  
              procedure Comp_XNOR(signal reg_ent1 : in std_logic_vector(7 downto 0);			
                                   signal reg_ent2 : in std_logic_vector(7 downto 0);
                                   signal A	 	  : out std_logic_vector(7 downto 0)
                                   );								
              -- Se declara el header del procedimiento de la INSTRUCCIÓN NOT
              procedure Comp_NOT(signal reg_ent1  : in std_logic_vector(7 downto 0);			
                                  signal reg_ent2  : in std_logic_vector(7 downto 0);
                                  signal A	    	  : out std_logic_vector(7 downto 0)
                                  );			
              -- Se declara el header del procedimiento de la INSTRUCCIÓN Corrimiento DER						  
              procedure CorrDer (signal reg_ent1 : in std_logic_vector (7 downto 0);			
                                       signal reg_ent2 : in std_logic_vector (7 downto 0);
                                       signal A    	  : out std_logic_vector (7 downto 0)
                                   );
              -- Se declara el header del procedimiento de la INSTRUCCIÓN Corrimiento IZQ
              procedure CorrIzq (signal reg_ent1 : in std_logic_vector (7 downto 0);			
                                       signal reg_ent2 : in std_logic_vector (7 downto 0);
                                       signal A  		  : out std_logic_vector (7 downto 0)
                                   );	
          	
          end ALU_P1;  		 -- Fin de la cabeza del paquete
			 
          -- ---------------------------------
          -- Se declara el cuerpo del paquete
			 -- ---------------------------------
          package body ALU_P1 is 				
              -- Se declara el Procedimiento de la Suma(+)
              procedure Suma (signal reg_ent1 : in std_logic_vector (7 downto 0);				
                              signal reg_ent2 : in std_logic_vector (7 downto 0);
                              signal bnd 		 : out std_logic_vector (2 downto 0);
                              signal A    	 : out std_logic_vector (7 downto 0)
                              )is								
                              begin									
                                 aux_ALU(7 downto 0) <= (reg_ent1 + reg_ent2);   
                                 A <= aux_ALU (7 downto 0);   																	
                                 if(aux_ALU = cero) then   -- Si el restaultado = 0 -> Z = 1   
                                    bnd(0) <= '1';        
                                 else
                                    bnd(0) <= '0';
                                 end if;										
                                 if(aux_ALU < cero) then   -- Si el restaultado < 0 -> N = 1
                                    bnd(2) <= '1';      
                                 else
                                    bnd(2) <= '0';				
                                 end if;												
                                 if(aux_ALU > esta_lleno) then   -- Si supera la capacidad del registro -> V = 1
                                    bnd(1) <= '1';        													
                                 else
                                    bnd(1) <= '0';       
                                 end if;					
              end Suma;				
              
				  -- --------------------------------------------
              -- Se declara el Procedimiento de la Resta(-)
				  -- --------------------------------------------
              procedure Resta (signal reg_ent1 : in std_logic_vector (7 downto 0);							
                               signal reg_ent2 : in std_logic_vector (7 downto 0);
                               signal bnd 	  : out std_logic_vector (2 downto 0);
                               signal A    	  : out std_logic_vector (7 downto 0)
                               )is									
                               begin									
                                 aux_ALU(7 downto 0) <= (reg_ent1 - reg_ent2);	 
                                 A <= aux_ALU(7 downto 0);									
                                 if(aux_ALU = cero) then   -- Si el restaultado = 0 -> Z = 1       
                                    bnd(0) <= '1';       
                                 else
                                    bnd(0) <= '0';
                                 end if;									 
                                 if(aux_ALU < cero) then   -- Si el restaultado < 0 -> N = 1    
                                    bnd(2) <= '1';        
                                 else
                                    bnd(2) <= '0';				
                                 end if;											
                                 if(aux_ALU > esta_lleno) then   -- Si supera la capacidad del registro -> V = 1  
                                    bnd(1) <= '1';    													
                                 else
                                    bnd(1) <= '0';       
                                 end if;
              end Resta;				
              
				  -- -------------------------------------------------------
              -- Se declara el Procedimiento de la Multiplicacion (*)
				  -- -------------------------------------------------------
              procedure Multi (signal reg_ent1 : in std_logic_vector (7 downto 0);				
                               signal reg_ent2 : in std_logic_vector (7 downto 0);
                               signal bnd 	  : out std_logic_vector (2 downto 0);
										 signal Am  	  : out std_logic_vector (15 downto 0)
                               )is									
                               begin									
                                 aux_ALU <= (reg_ent1 * reg_ent2);
                                 Am <= aux_ALU;									
                                 if(aux_ALU = cero) then   -- Si el restaultado = 0 -> Z = 1
                                    bnd(0) <= '1';        
                                 else
                                    bnd(0) <= '0';
                                 end if;										
                                 if(aux_ALU < cero) then   -- Si el restaultado < 0 -> N = 1      
                                    bnd(2) <= '1';        
                                 else
                                    bnd(2) <= '0';				
                                 end if;											
                                 if(aux_ALU > esta_lleno) then      
                                    bnd(1) <= '1';        -- Si supera la capacidad del registro -> V = 1													
                                 else
                                    bnd(1) <= '0';       
                                 end if;
              end Multi;
              
				  -- ----------------------------------- 
              -- Se declara el Procedimiento de AND
				  -- -----------------------------------
              procedure Comp_AND (signal reg_ent1 : in std_logic_vector(7 downto 0);			
                                  signal reg_ent2 : in std_logic_vector(7 downto 0);
                                  signal A	 	  : out std_logic_vector(7 downto 0)
                                  )is
                                  begin 
                                    aux_ALU(7 downto 0) <= (reg_ent1 AND reg_ent2);
                                    A <= aux_ALU(7 downto 0);
              end Comp_AND;
              
				  -- ----------------------------------
              -- Se declara el Procedimiento de OR
				  -- ----------------------------------
              procedure Comp_OR (signal reg_ent1 : in std_logic_vector(7 downto 0);			
                                 signal reg_ent2 : in std_logic_vector(7 downto 0);
                                 signal A			 : out std_logic_vector(7 downto 0)
                                 )is
                                 begin 
                                   aux_ALU(7 downto 0) <= (reg_ent1 OR reg_ent2);
                                   A <= aux_ALU(7 downto 0);
              end Comp_OR;			
              
				  -- -----------------------------------
              -- Se declara el Procedimiento de NOT
			     -- -----------------------------------	  
              procedure Comp_NOT (signal reg_ent1 : in std_logic_vector(7 downto 0);			
                                  signal reg_ent2 : in std_logic_vector(7 downto 0);
                                  signal A		  : out std_logic_vector(7 downto 0)
                                  )is
                                  begin 
                                    aux_ALU(7 downto 0) <= (NOT reg_ent1);
                                    A <= aux_ALU(7 downto 0);
              end Comp_NOT;
              
				  -- -----------------------------------
              -- Se declara el Procedimiento de NOR
				  -- -----------------------------------
              procedure Comp_NOR (signal reg_ent1 : in std_logic_vector(7 downto 0);			
                                  signal reg_ent2 : in std_logic_vector(7 downto 0);
                                  signal A 		  : out std_logic_vector(7 downto 0)
                                  )is
                                  begin 
                                    aux_ALU(7 downto 0) <= (reg_ent1 NOR reg_ent2);
                                    A <= aux_ALU(7 downto 0);
              end Comp_NOR;
              
				  -- ------------------------------------
              -- Se declara el Procedimiento de NAND
				  -- ------------------------------------
              procedure Comp_NAND (signal reg_ent1 : in std_logic_vector(7 downto 0);		
                                   signal reg_ent2 : in std_logic_vector(7 downto 0);
                                   signal A		   : out std_logic_vector(7 downto 0)
                                   )is
                                   begin 
                                    aux_ALU(7 downto 0) <= (reg_ent1 NAND reg_ent2);
                                    A <= aux_ALU(7 downto 0);
              end Comp_NAND;
              
				  -- -----------------------------------
              -- Se declara el Procedimiento de XOR
			     -- -----------------------------------	  
              procedure Comp_XOR (signal reg_ent1 : in std_logic_vector(7 downto 0);
                                  signal reg_ent2 : in std_logic_vector(7 downto 0);
                                  signal A 		  : out std_logic_vector(7 downto 0)
                                  )is
                                  begin 
                                    aux_ALU(7 downto 0) <= (reg_ent1 XOR reg_ent2);
                                    A <= aux_ALU(7 downto 0);
              end Comp_XOR;
              
				  -- ------------------------------------
              -- Se declara el Procedimiento de XNOR	
			     -- ------------------------------------	  
              procedure Comp_XNOR (signal reg_ent1 : in std_logic_vector(7 downto 0);		
                                   signal reg_ent2 : in std_logic_vector(7 downto 0);
                                   signal A	  		: out std_logic_vector(7 downto 0)
                                   )is
                                   begin 										
                                    aux_ALU(7 downto 0) <= (reg_ent1 XNOR reg_ent2);
                                    A <= aux_ALU(7 downto 0);
              end Comp_XNOR;
              
				  -- -------------------------------------------------
              -- Se declara el Procedimiento del Corrimiento DER	
			     -- -------------------------------------------------	  
              procedure CorrDer (signal reg_ent1 : in std_logic_vector(7 downto 0);			
                                 signal reg_ent2 : in std_logic_vector(7 downto 0);
                                 signal A	       : out std_logic_vector(7 downto 0)
                                 )is
                                 begin 
                                    aux_ALU(6 downto 0) <= reg_ent1(7 downto 1);
                                    aux_ALU(7) <= '0';										
                                    A <= aux_ALU(7 downto 0);							
              end CorrDer;
              
				  -- ------------------------------------------------
              -- Se declara el Procedimiento del Corrimiento IZQ
				  -- ------------------------------------------------
              procedure CorrIzq (signal reg_ent1 : in std_logic_vector(7 downto 0);			
                                 signal reg_ent2 : in std_logic_vector(7 downto 0);
                                 signal A	       : out std_logic_vector(7 downto 0)
                                 )is 
                                 begin 
                                    aux_ALU(7 downto 1) <= reg_ent1(6 downto 0);	
                                    aux_ALU(0) <= '0';										
                                    A <= aux_ALU(7 downto 0);							
              end CorrIzq;		
                                                    
         end package body;