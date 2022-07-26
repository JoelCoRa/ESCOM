# Programa 1. AFN
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

salida = open("salida.txt","w")
salida.write("**** Caminos Posibles y Manejo de Errores ****\n\n")

def funAutomata(cadena, numCarac, estActual, camino):
    if(numCarac == len(cadena)):       
        salida.write("Camino: " + camino)          
        if(estActual in estFinal):
            salida.write("\nLa cadena es: VÁLIDA\n\n")  
            for valor in caracInvalid:
                salida.write("Manejo de Errores\n")
                salida.write("Posicion:" + str(valor+1) + "\nCaracter " + caracInvalid[valor] + "\n\n")
        else:
            salida.write("\nLa cadena es: INVÁLIDA\n\n")             

    elif(numCarac < len(cadena)):
        if cadena[numCarac] in alfabeto:
            valor = estActual + "," + cadena[numCarac]
            posibEdos = transicion[valor].split(",")
            for estPosib in posibEdos:
                nuevo_camino = camino + "," + estPosib
                funAutomata(cadena, numCarac+1, estPosib, nuevo_camino)
        else:
            caracInvalid[numCarac] = cadena[numCarac]
            funAutomata(cadena, numCarac + 1, estActual, camino)    

def completarAutomata():
    # print("Completando Automata")    
    for estado in edos:
        for caracter in alfabeto:
            valor = estado + "," + caracter
            if not(valor in transicion):
                transicion[valor] = "E"

        for caracter in alfabeto:
            valor = "E" + "," + caracter
            transicion[valor] = "E"

def leerTxt():
    # print("Leyendo archivo")
    archivo = open("entradaP1.txt")
    for count, line in enumerate(archivo):
        if count == 0:
            estados_raw = line.split(",")
            for estado in estados_raw:
                edos.append(estado.split("\n")[0])

        if count == 1:
            estados_finales_raw = line.split(",")
            for estado_final in estados_finales_raw:
                estFinal.append(estado_final.split("\n")[0])

        if count == 2:
            estados_iniciales_raw = line.split(",")
            for estado_inicial_raw in estados_iniciales_raw:
                estIni.append(estado_inicial_raw.split("\n")[0])

        if count == 3:
            alfabeto_raw = line.split(",")
            for caracter in alfabeto_raw:
                alfabeto.append(caracter.split("\n")[0])

        elif count > 3:
            trancision_raw = line.split(",")
            valor = trancision_raw[0] + "," + trancision_raw[1]
            new_val = trancision_raw[2].split("\n")[0]
            if not(valor in transicion):
                transicion[valor] = new_val
            else:
                old_val = transicion[valor]
                transicion[valor] = old_val + "," + new_val
    archivo.close()

leerTxt()

# print("NFA Transicion")
# completarAutomata()
# # print("Transicion Completa")
# # print(transicion)
# print("Inserte la cadena a verificar")
# cadena = input()
# funAutomata(cadena, 0, estIni[0], estIni[0])

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

