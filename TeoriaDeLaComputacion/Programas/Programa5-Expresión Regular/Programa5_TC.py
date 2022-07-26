# Programa 5.Expresión Regular
# Nombre: Colín Ramiro Joel
# Profesor: Juarez Martínez Genaro
# Grupo: 4CM2
# Materia: Teoría Computacional
import random
from tkinter import*
def generadorCad():
    numCad = 10
    expresionGen = []    
    for i in range(0,numCad):
        archivo.write("\nCadena "+ str(i+1) + ".-")
        archivo2.write("\n\nCadena "+ str(i+1) + ".-")
        expresionGen.append ("")
        kleene = random.choice(["e","n"])
        archivo2.write("\n   Kleene = " + kleene)
        if (kleene == "n"):
            n = random.randint(1,10)
            for j in range (0,n):
                aux0 = random.choice(["0","10"])        
                archivo2.write("\n   aux0 = " + aux0)
                expresionGen[i] = expresionGen[i] + aux0
        archivo2.write("\n   Expresion Final Generada: " + expresionGen[i])
        aux1 = random.choice(["e","0","1"])
        expresionGen[i] = expresionGen [i] + aux1
        archivo2.write(" " + "\n   aux1 =  " + aux1 )
        archivo.write("\n"+ expresionGen[i]+ "\n ")
    archivo.write("Las cadenas generadas son:\n"+ str(expresionGen))
    print("\nLas cadenas generadas se encuentran en el archivo: CadenasP5.txt\n")
    print("\nLas Operaciones se encuentran en el archivo: OperacionesP5.txt\n")

opc = 1
salir = 2
archivo = open("CadenasP5.txt","w")
archivo2 = open("OperacionesP5.txt","w")
cont = 1
while opc != salir:
    generadorCad()        
    while (opc != salir): 
        print("   ****Digite la opción****")
        opc = int(input('''
        1.- Continuar con el programa
        2.- Salir
        '''))
        if (opc == 1):
            cont = cont + 1
            archivo.write("\n\nSe generan por " + str(cont) + " vez las cadenas.\n")
            archivo2.write("\n\nSe generan por " + str(cont) + " vez las cadenas.\n")
            generadorCad()  
        elif opc == 2:
            print("Saliendo del Programa. Hasta Luego!!!!")         
        else:
            print("Opcion inválida, Vuelva a intentar")