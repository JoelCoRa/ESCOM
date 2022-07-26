# Programa 2. AFN-E
# Autor:    Colín Ramiro Joel
# Profesor: Hernández Olvera Luis Enrique
# Grupo:    5CV2
# Materia:  Compiladores

edos = []               # Q
estFinal = []           # F
estIni = []             # I
alfabeto = []           # Sigma
transicion = {}         # Delta
caracInvalid = {}       
caminos = []

def funAutomata(cadena, numCarac, estActual, camino):     
    salida = open("salida.txt","w")
    if(numCarac == len(cadena)):           
        
        salida.write("**** Caminos Posibles y Manejo de Errores ****\n\n")   
        salida.write("Camino : " + camino) 
        print("Camino : " + camino)             
        if(estActual in estFinal):
            salida.write("\nLa cadena es: VÁLIDA\n\n")  
            print("\nLa cadena es: VÁLIDA\n\n")  
            for valor in caracInvalid:
                salida.write("Manejo de Errores\n")
                print("Manejo de Errores\n")
                salida.write("\nLa cadena es: VÁLIDA\n\n")  
                print("\nLa cadena es: VÁLIDA\n\n")  
                salida.write("Posicion:" + str(valor+1) + "\nCaracter " + caracInvalid[valor] + "\n\n")
                print("Posicion:" + str(valor+1) + "\nCaracter " + caracInvalid[valor] + "\n\n")
        else:
            salida.write("\nLa cadena es: INVÁLIDA\n\n")    
            print("\nLa cadena es: INVÁLIDA\n\n")   
                

    elif(numCarac < len(cadena)):
        if(cadena[numCarac] in alfabeto):
            valor = estActual + "," + cadena[numCarac]
            posibEdos = transicion[valor].split(",")
            for estPosib in posibEdos:
                nuevoCamino = camino + "," + estPosib
                funAutomata(cadena, numCarac+1, estPosib, nuevoCamino)
        else:
            caracInvalid[numCarac] = cadena[numCarac]
            funAutomata(cadena, numCarac+1, estActual, camino)  
    

def completarAutomata():    
    for estado in edos:
        for car in alfabeto:
            valor = estado + "," + car
            if not(valor in transicion):
                transicion[valor] = "E"                  

        for car in alfabeto:
            valor = "E" + "," + car
            transicion[valor] = "E"

def leerTxt():   
    archivo = open("entradaP1.txt")
    for count, line in enumerate(archivo):
        if count == 0:
            estAux = line.split(",")
            for estado in estAux:
                edos.append(estado.split("\n")[0])

        if count == 1:
            estFinAux = line.split(",")
            for estado_final in estFinAux:
                estFinal.append(estado_final.split("\n")[0])

        if count == 2:
            estIniAux = line.split(",")
            for estado_inicial_raw in estIniAux:
                estIni.append(estado_inicial_raw.split("\n")[0])

        if count == 3:
            alfAux = line.split(",")
            for car in alfAux:
                alfabeto.append(car.split("\n")[0])

        elif count > 3:
            transiAux = line.split(",")
            valor = transiAux[0] + "," + transiAux[1]
            valorNuevo = transiAux[2].split("\n")[0]
            if not(valor in transicion):
                transicion[valor] = valorNuevo
            else:
                valorViejo = transicion[valor]
                transicion[valor] = valorViejo + "," + valorNuevo
    archivo.close()



# print("NFA Transicion")
# completarAutomata()
# # print("Transicion Completa")
# # print(transicion)
# print("Inserte la cadena a verificar")
# cadena = input()
# funAutomata(cadena, 0, estIni[0], estIni[0])


leerTxt()
#**** Menú Principal **** #
opc = 0
salir = 2
while opc != salir:
    print("\n\n********Menu Principal********\n\n")
    print("   ****Digite la opción****")
    opc = int(input('''
    1.- Iniciar Programa
    2.- Salir
    '''))    
    if (opc == 1):
        print("NFA Transicion")
        completarAutomata()
        print("Transicion Completa")
        print(transicion)
        print("Inserte la cadena a verificar")
        cadena = input()
        funAutomata(cadena, 0, estIni[0], estIni[0])    
    elif (opc == 2):
        print("Saliendo del Programa. Hasta Luego!!!!")
    else:
        print("Opcion inválida, Vuelva a intentar")




























































# print("Programa 1")
# print("\nConjunto de Estados (Q):")
# print(edos)
# print("Conjunto de Estados Finales(F):")
# print(estFinal)
# print("Estado Inicial (I):")
# print(estIni)
# print("Alfabeto (Sigma):")
# print(alfabeto)
# print("Conjunto de Transiciones (Delta):")
# print(transicion)

