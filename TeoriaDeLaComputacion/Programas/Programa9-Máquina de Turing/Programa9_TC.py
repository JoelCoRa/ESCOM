# Programa 9.Máquina de Turing
# Nombre: Colín Ramiro Joel
# Profesor: Juarez Martínez Genaro
# Grupo: 4CM2
# Materia: Teoría Computacional
import sys
import time
import random
from tkinter import*
from random import randint

def maqTuring(opc):
    archivo = open("SalidaP9.txt","w")
    archivo.write("**En este archivo se encuentran las descripciones instantáneas(IDs) de la Máquina de Turing.**\n\n")
    alfabeto = ["-","*","|","a","X"]
    if(opc == 1):        
        cadena = input("Ingrese la cadena deseada (Solo puede contener los símbolos: '-', '*', '|', 'a' y 'X'): \n")
    elif(opc == 2):
        tamCad = randint(0,10)
        cadena = ""
        for i in range(0, tamCad):
            cadena = cadena + random.choice(alfabeto)            
    cad = []    
    for elem in cadena:
        cad.append(elem)
    print("\n")
    if(len(cad) <= 10):
        ventana = Tk()
        canva = Canvas(ventana , width=1200, height =400)
        ventana.geometry("1200x400")
        canva.pack()
        canva.create_rectangle(39, 200, 1130, 275, width=5, fill='blue')
        xIni = 45
        xFin = 105
        yIni = 205
        yFin = 270
        mens = Label(ventana, text = "Cadena a verificar: " + str(cad)).place(x=10,y=10)
        xCabezaIni = 300
        xCabezaFin = 330
        canva.create_rectangle(xCabezaIni, 150, xCabezaFin, 180, width=2, fill='yellow')  
        caract = ""
        for i in range(0,18):
            canva.create_rectangle(xIni, yIni, xFin, yFin, width=2, fill='red')
            xIni = xFin + 5
            xFin = xFin + 60   
        posxCad = 310
        posyCad = 225  
        for car in cad:
            caract = caract + car 
            caracterAnim = Label(ventana, text=car, bg="light gray").place(x=posxCad,y=posyCad)
            posxCad = posxCad + 60     
    estado = "q0"
    i = 0 
    cont = 1
    print("La cadena a evaluar es: " + str(cad)) 
    archivo.write("La cadena a evaluar es:   " + str(cad) + "\n\n")
    try:        
        while(estado != "q9"):
            pos = 0
            posaux = 0
            for elem in cad:
                if(pos == i):
                    pos = pos+1
            if(i == -1):
                cad.insert(0, "")
                i = 0
            if(estado == "q0"): #Estado q0 = 1
                if(cad[i] == "*"):
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q1"
                    cad[i] = "X"     
                    i = i+1                             
                    print("El caracter sobre escrito es: X\n")
                    archivo.write("El caracter sobre escrito es: X\n")
                    print("(X,R,"+estado+")\n")
                    print(cad)
                    archivo.write("La cadena sobrescrita es: " + str(cad) + "\n")
                    archivo.write("ID"+ str(cont) +".- (X,R,"+estado+")\n\n")
                    cont = cont+1
                else:
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q0"
                    cad[i] = i
                    print("("+cad[i]+",R,"+estado+")\n")
                    print("Cadena Rechazada")                    
                    break

            if(estado == "q1"): #Estado q1 = 2
                if(cad[i]  == "*"):
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q2"
                    cad[i] = "*"                    
                    i = i+1
                    print("El caracter sobre escrito es: *\n")
                    archivo.write("El caracter sobre escrito es: *\n")
                    print("(*,R,"+estado+")\n")
                    print(cad)
                    archivo.write("La cadena sobrescrita es: " + str(cad) + "\n")
                    archivo.write("ID"+ str(cont) +".- (*,R,"+estado+")\n\n")
                    cont = cont+1
                elif(cad[i] == "|"):
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q1"
                    cad[i] = "|"
                    i = i+1
                    print("El caracter sobre escrito es: |\n")
                    archivo.write("El caracter sobre escrito es: |\n")
                    print("(|,R,"+estado+")\n")
                    print(cad)
                    archivo.write("La cadena sobrescrita es: " + str(cad) + "\n")
                    archivo.write("ID"+ str(cont) +".- (|,R,"+estado+")\n\n")
                    cont = cont+1
                else:
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q1"
                    cad[i] = i
                    print("("+cad[i]+",Z,"+estado+")\n")
                    print("Cadena Rechazada")
                    break
            if(estado == "q2"): #Estado q2 = 3
                if(cad[i] == "*"):
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q3"
                    cad[i] = "X"
                    i = i-1
                    print("El caracter sobre escrito es: X\n")
                    archivo.write("El caracter sobre escrito es: X\n")
                    print("(X,L,"+estado+")\n")
                    print(cad)
                    archivo.write("La cadena sobrescrita es: " + str(cad) + "\n")
                    archivo.write("ID"+ str(cont) +".- (X,L,"+estado+")\n\n")
                    cont = cont+1
                elif(cad[i] == "|"):
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q2"
                    cad[i] = "|"
                    i = i+1
                    print("El caracter sobre escrito es: |\n")
                    archivo.write("El caracter sobre escrito es: |\n")
                    print("(|,R,"+estado+")\n")
                    print(cad)
                    archivo.write("La cadena sobrescrita es: " + str(cad) + "\n")
                    archivo.write("ID"+ str(cont) +".- (|,R,"+estado+")\n\n")
                    cont = cont+1
                else:
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q2"
                    cad[i] = i
                    print("("+cad[i]+",Z,"+estado+")\n")
                    print("Cadena Rechazada")
                    break     

            if(estado == "q3"): #Estado q3 = 4
                if(cad[i] == "*"):
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q3"
                    cad[i] = "*"
                    i = i-1
                    print("El caracter sobre escrito es: *\n")
                    archivo.write("El caracter sobre escrito es: *\n")
                    print("(*,L,"+estado+")\n")
                    print(cad)
                    archivo.write("La cadena sobrescrita es: " + str(cad) + "\n")
                    archivo.write("ID"+ str(cont) +".- (*,L,"+estado+")\n\n")
                    cont = cont+1
                elif(cad[i] == "|"):
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q4"
                    cad[i] = "a"
                    i = i+1
                    print("El caracter sobre escrito es: a\n")
                    archivo.write("El caracter sobre escrito es: a\n")
                    print("(a,R,"+estado+")\n")
                    print(cad)
                    archivo.write("La cadena sobrescrita es: " + str(cad) + "\n")
                    archivo.write("ID"+ str(cont) +".- (a,R,"+estado+")\n\n")
                    cont = cont+1
                elif(cad[i] == "X"):
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q6"
                    cad[i] = "X"
                    i = i+1
                    print("El caracter sobre escrito es: X\n")
                    archivo.write("El caracter sobre escrito es: X\n")
                    print("(X,R,"+estado+")\n")
                    print(cad)
                    archivo.write("La cadena sobrescrita es: " + str(cad) + "\n")
                    archivo.write("ID"+ str(cont) +".- (X,R,"+estado+")\n\n")
                    cont = cont+1
                else:
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q3"
                    cad[i] = i
                    print("("+cad[i]+",Z,"+estado+")\n")
                    print("Cadena Rechazada")
                    break 

            if(estado == "q4"): #Estado q4 = 5
                if(cad[i] == "-"):
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q5"
                    cad[i] = "|"
                    i = i-1
                    print("El caracter sobre escrito es: |\n")
                    archivo.write("El caracter sobre escrito es: |\n")
                    print("(|,L,"+estado+")\n")
                    print(cad)
                    archivo.write("La cadena sobrescrita es: " + str(cad) + "\n")
                    archivo.write("ID"+ str(cont) +".- (|,L,"+estado+")\n\n")
                    cont = cont+1
                elif(cad[i] == "*"):
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q4"
                    cad[i] = "*"
                    i = i+1
                    print("El caracter sobre escrito es: *\n")
                    archivo.write("El caracter sobre escrito es: *\n")
                    print("(*,R,"+estado+")\n")
                    print(cad)
                    archivo.write("La cadena sobrescrita es: " + str(cad) + "\n")
                    archivo.write("ID"+ str(cont) +".- (*,R,"+estado+")\n\n")
                    cont = cont+1
                elif(cad[i] == "|"):
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q4"
                    cad[i] = "|"
                    i = i+1
                    print("El caracter sobre escrito es: |\n")
                    archivo.write("El caracter sobre escrito es: |\n")
                    print("(|,R,"+estado+")\n")
                    print(cad)
                    archivo.write("La cadena sobrescrita es: " + str(cad) + "\n")
                    archivo.write("ID"+ str(cont) +".- (|,R,"+estado+")\n\n")
                    cont = cont+1
                elif(cad[i] == "X"):
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q4"
                    cad[i] = "X"
                    i = i+1
                    print("El caracter sobre escrito es: X\n")
                    archivo.write("El caracter sobre escrito es: X\n")
                    print("(X,R,"+estado+")\n")
                    print(cad)
                    archivo.write("La cadena sobrescrita es: " + str(cad) + "\n")
                    archivo.write("ID"+ str(cont) +".- (X,R,"+estado+")\n\n")
                    cont = cont+1
                else:
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q4"
                    cad[i] = i
                    print("("+cad[i]+",Z,"+estado+")\n")
                    print("Cadena Rechazada")
                    break 

            if(estado == "q5"): #Estado q5 = 6
                if(cad[i] == "*"):
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q5"
                    cad[i] = "*"
                    i = i-1
                    print("El caracter sobre escrito es: *\n")
                    archivo.write("El caracter sobre escrito es: *\n")
                    print("(*,L,"+estado+")\n")
                    print(cad)
                    archivo.write("La cadena sobrescrita es: " + str(cad) + "\n")
                    archivo.write("ID"+ str(cont) +".- (*,L,"+estado+")\n\n")
                    cont = cont+1
                elif(cad[i] == "|"):
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q5"
                    cad[i] = "|"
                    i = i-1
                    print("El caracter sobre escrito es: |\n")
                    archivo.write("El caracter sobre escrito es: |\n")
                    print("(|,L,"+estado+")\n")
                    print(cad)
                    archivo.write("La cadena sobrescrita es: " + str(cad) + "\n")
                    archivo.write("ID"+ str(cont) +".- (|,L,"+estado+")\n\n")
                    cont = cont+1
                elif(cad[i] == "a"):
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q3"
                    cad[i] = "|"
                    i = i-1
                    print("El caracter sobre escrito es: |\n")
                    archivo.write("El caracter sobre escrito es: |\n")
                    print("(|,L,"+estado+")\n")
                    print(cad)
                    archivo.write("La cadena sobrescrita es: " + str(cad) + "\n")
                    archivo.write("ID"+ str(cont) +".- (|,L,"+estado+")\n\n")
                    cont = cont+1
                elif(cad[i] == "X"):
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q5"
                    cad[i] = "X"
                    i = i-1
                    print("El caracter sobre escrito es: X\n")
                    archivo.write("El caracter sobre escrito es: X\n")
                    print("(X,L,"+estado+")\n")
                    print(cad)
                    archivo.write("La cadena sobrescrita es: " + str(cad) + "\n")
                    archivo.write("ID"+ str(cont) +".- (X,L,"+estado+")\n\n")
                    cont = cont+1
                else:
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q5"
                    cad[i] = i
                    print("("+cad[i]+",Z,"+estado+")\n")
                    print("Cadena Rechazada")
                    break 

            if(estado == "q6"): #Estado q6 = 7
                if(cad[i] == "*"):
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q7"
                    cad[i] = "*"
                    i = i+1
                    print("El caracter sobre escrito es: *\n")
                    archivo.write("El caracter sobre escrito es: *\n")
                    print("(*,R,"+estado+")\n")
                    print(cad)
                    archivo.write("La cadena sobrescrita es: " + str(cad) + "\n")
                    archivo.write("ID"+ str(cont) +".- (*,R,"+estado+")\n\n")
                    cont = cont+1
                elif(cad[i] == "|"):
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q6"
                    cad[i] = "|"
                    i = i+1
                    print("El caracter sobre escrito es: |\n")
                    archivo.write("El caracter sobre escrito es: |\n")
                    print("(|,R,"+estado+")\n")
                    print(cad)
                    archivo.write("La cadena sobrescrita es: " + str(cad) + "\n")
                    archivo.write("ID"+ str(cont) +".- (|,R,"+estado+")\n\n")
                    cont = cont+1
                else:
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q6"
                    cad[i] = i
                    print("("+cad[i]+",Z,"+estado+")\n")
                    print("Cadena Rechazada")
                    break    

            if(estado == "q7"): #Estado q7 = 8
                if(cad[i] == "-"):
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q8"
                    cad[i] = "*"
                    i = i-1
                    print("El caracter sobre escrito es: *\n")
                    archivo.write("El caracter sobre escrito es: *\n")
                    print("(*,L,"+estado+")\n")
                    print(cad)
                    archivo.write("La cadena sobrescrita es: " + str(cad) + "\n")
                    archivo.write("ID"+ str(cont) +".- (*,L,"+estado+")\n\n")
                    cont = cont+1
                elif(cad[i] == "|"):
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q7"
                    cad[i] = "|"
                    i = i+1
                    print("El caracter sobre escrito es: |\n")
                    archivo.write("El caracter sobre escrito es: |\n")
                    print("(|,R,"+estado+")\n")
                    print(cad)
                    archivo.write("La cadena sobrescrita es: " + str(cad) + "\n")
                    archivo.write("ID"+ str(cont) +".- (|,R,"+estado+")\n\n")
                    cont = cont+1
                elif(cad[i] == "X"):
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q7"
                    cad[i] = "*"
                    i = i+1
                    print("El caracter sobre escrito es: X\n")
                    archivo.write("El caracter sobre escrito es: X\n")
                    print("(*,R,"+estado+")\n")
                    print(cad)
                    archivo.write("La cadena sobrescrita es: " + str(cad) + "\n")
                    archivo.write("ID"+ str(cont) +".- (*,R,"+estado+")\n\n")
                    cont = cont+1
                else:
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q7"
                    cad[i] = i
                    print("("+cad[i]+",Z,"+estado+")\n")
                    print("Cadena Rechazada")
                    break 

            if(estado == "q8"): #Estado q8 = 9
                if(cad[i] == "*"):
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q8"
                    cad[i] = "*"
                    i = i-1
                    print("El caracter sobre escrito es: *\n")
                    archivo.write("El caracter sobre escrito es: *\n")
                    print("(*,L,"+estado+")\n")
                    print(cad)
                    archivo.write("La cadena sobrescrita es: " + str(cad) + "\n")
                    archivo.write("ID"+ str(cont) +".- (*,L,"+estado+")\n\n")
                    cont = cont+1
                elif(cad[i] == "|"):
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    estado = "q8"
                    cad[i] = "*"
                    i = i-1
                    print("El caracter sobre escrito es: *\n")
                    archivo.write("El caracter sobre escrito es: *\n")
                    print("(*,L,"+estado+")\n")
                    print(cad)
                    archivo.write("La cadena sobrescrita es: " + str(cad) + "\n")
                    archivo.write("ID"+ str(cont) +".- (*,L,"+estado+")\n\n")
                    cont = cont+1
                elif(cad[i] == "X"):
                    print("Caracter analizado: " + cad[i] + "\n")
                    archivo.write("Caracter analizado: "+cad[i]+"\n")
                    cad[i] = "*"
                    print("\nCadena Aceptada\n")
                    archivo.write("\nCadena Aceptada\n")
                    print("(*,Z,F)"+"\n")
                    print(cad)
                    archivo.write("La cadena final es: " + str(cad) + "\n")
                    archivo.write("ID"+ str(cont) +".- (*,Z,F)"+"\n\n")
                    cont = cont+1
                    break
                else:
                    estado = "q8"
                    cad[i] = i
                    print("("+cad[i]+",Z,"+estado+")\n")
                    print("Cadena Rechazada")
                    break 
    except:
        print("Cadena Rechazada")
        
opc = 0
salir = 3
while opc != salir:
    print("\n\n********Menu Principal********\n\n")
    print("   ****Digite la opción****")
    opc = int(input('''
    1.- Cadena Manual
    2.- Cadena Automática
    3.- Salir
    '''))    
    if(opc == 1) or (opc == 2):
        maqTuring(opc)
    elif opc == 3:
        print("Saliendo del Programa. Hasta Luego!!!!")
    else:
        print("Opcion inválida, Vuelva a intentar")