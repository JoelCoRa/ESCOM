# Programa 8.Gramática NO Ambigua
# Nombre: Colín Ramiro Joel
# Profesor: Juarez Martínez Genaro
# Grupo: 4CM2
# Materia: Teoría Computacional

from random import randint

def evaluacion(opcion):
    archivo = open("SalidaP8.txt","w")
    archivo.write("**Este archivo de texto es la evaluación de la gramática del Programa 8**\n\n")
    if(opcion == 1):
        print("Se ha seleccionado el modo manual\n")
        print("Ingrese una cadena únicamente compuesta por paréntesis que no rebase los 1000 caracteres: ")
        cadenaParentesis = input()
        archivo.write("La cadena de parentesis a evaluar es: " + cadenaParentesis)
    elif(opcion == 2):
        print("Se ha seleccionado el modo automático\n")
        print("Generando cadena menor a los 1000 caracteres...")
        archivo.write("Se ha seleccionado el modo automático\n")        
        archivo.write("Generando Cadena menor a los 1000 caracteres...")  
        cadenaParentesis = " "
        longCadenaAuto = randint(1,100)
        for i in range(0, longCadenaAuto):
            aleat = randint(0,1)
            if(aleat == 0):
                cadenaParentesis = cadenaParentesis + '('
            elif(aleat == 1):                 
                cadenaParentesis = cadenaParentesis + ')'
        print("La cadena generada es: "+ cadenaParentesis)
        archivo.write("La cadena generada es:" + cadenaParentesis)   
    
    print("")
    archivo.write("\n ")
    longCadena = len(cadenaParentesis)
    finEv = "B"
    resFinal = ""
    print("B")
    archivo.write("\nB")
    for i in range(0,longCadena):        
        if(finEv[0] == "B"):
            if(cadenaParentesis[i] == "("):
                finEv = "R" + finEv
                resFinal = resFinal + "("
                print(resFinal + finEv)
                archivo.write("\n" + resFinal + finEv)
                continue                 
        if(finEv[0] == "R"):
            if(cadenaParentesis[i] == "("):
                finEv = "R" + finEv
                resFinal = resFinal + "("
                print(resFinal + finEv)
                archivo.write("\n" + resFinal + finEv)
                continue            
            if(cadenaParentesis[i] == ")"):
                finEv = finEv[1:len(finEv)]
                resFinal = resFinal + ")"
                print(resFinal + finEv)
                archivo.write("\n" + resFinal + finEv)
                continue
    if(finEv == "B"):
        print(resFinal)
        print("\nPor lo tanto, la cadena se encuentra balanceada")
        archivo.write("\n" + resFinal)
        archivo.write("\nPor lo tanto la cadena se encuentra balanceada")
    elif(finEv != "B"):
        print(resFinal)
        print("\nPor lo tanto la cadena NO se encuentra balanceada")
        archivo.write("\n" + resFinal)
        archivo.write("\nPor lo tanto la cadena NO se encuentra balanceada")

opc = 0
salir = 3
while opc != salir:
    print("\n***Menu Principal Práctica 8***\n")
    print("****Digite la opción****")
    opc = int(input('''
        1.- Manual
        2.- Automático
        3.- Salir
    '''))  
    if(opc == 1 or opc == 2):
        evaluacion(opc)   
    elif opc == 3:
        print("Saliendo del Programa. Hasta Luego!!!!")
    else:
        print("Opcion inválida, Vuelva a intentar")