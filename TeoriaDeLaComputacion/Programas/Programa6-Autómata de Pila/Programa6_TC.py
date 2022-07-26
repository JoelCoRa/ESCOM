# Programa 6.Autómata de Pila
# Nombre: Colín Ramiro Joel
# Profesor: Juarez Martínez Genaro
# Grupo: 4CM2
# Materia: Teoría Computacional
import time
import random
from tkinter import*

def animarPila(cad):        
    ventana = Tk()
    ca = Canvas(ventana, width=650, height=650) 
    ventana.geometry("650x650")
    ca.place(x=0,y=0)
    et = Label(ventana, text = "Cadena a verificar: " + cad).place(x=10,y=10)
    ca.create_rectangle(0,300, 600, 400, width=5, fill='black')    
    xIni = 0
    xFin = 60
    yIni = 300
    yFin = 400
    cadList = list(cad)
    lenCadList = len(cadList)
    cadList.append("")
    for caracter in cadList:        
        ventana.update()
        time.sleep(.5)        
        if(caracter == "0"):
            ca.create_rectangle(xIni, yIni, xFin, yFin, width=5, fill='blue')
            xIni = xIni + 60
            xFin = xFin + 60 
            lenCadList = lenCadList - 1 
            if(lenCadList == 0):
                cadEtiqueta = Label(ventana, text="Cadena Rechazada \n").place(x=100,y=100)  
                ca.create_rectangle(0,300, 600, 400, width=5, fill='red')
                break 
        elif(caracter == "1"):
            ca.create_rectangle(xIni-60, yIni, xFin-60, yFin, width=5, fill='black')
            xIni = xIni - 60
            xFin = xFin - 60
            lenCadList = lenCadList - 1 
            if(lenCadList == 0):
                cadEtiqueta = Label(ventana, text="Cadena Rechazada \n").place(x=100,y=100)  
                ca.create_rectangle(0,300, 600, 400, width=5, fill='red')
                break
        elif(caracter == ""):
            ca.create_rectangle(0,300, 600, 400, width=5, fill='green')
            cadEtiqueta = Label(ventana, text="Cadena Aceptada\n").place(x=100,y=100)
            break
        lenCadList = lenCadList - 1
    ventana.mainloop()

def evaluarCadena(opcion):
    archivo = open("SalidaP6.txt","w")
    archivo.write("\n***Evaluación del Autómata...***\n")
    archivo.write("A través de descripciones instantáneas(IDs)")
    if(opcion == 1):
        cadena = input("Ingrese la cadena a evaluar: ")
        cad = list(cadena)
        cad.append("")
    elif( opcion == 2):
        rand = random.randrange(1000)
        cadena = str(bin(rand)[3:])
        cad = list(cadena)     
        cad.append("")   
        print("Generando cadena...")
    print("Cadena a evaluar: ", cadena)
    archivo.write("\n\n Cadena a evaluar: " + cadena + "\n")
    longCad = len(cad)
    if(longCad <= 10):
        animarPila(cadena)
    pila = []
    print(pila)    
    estado = "q"    
    archivo.write(" ID inicial: \n")  
    archivo.write("    (" + estado + "," + cadena + "," + "z0" + ")\n")   
    for caracter in range(0,longCad):    
        archivo.write("\n " + str(caracter+1) + ".-")       
        time.sleep(.5)   
        if(len(pila) == 0):
            estado = "f"                                  
            if(cad[caracter] == "1"):
                estado = "p"
                archivo.write("(" + estado + "," + cadena[caracter:longCad] + "," + "z0" + ")")   
                print("Cadena Rechazada")
                archivo.write("\nCadena Rechazada") 
                break                
            elif(cad[caracter] == "0"):
                estado = "q"
                time.sleep(.5)
                pila.append("X")
                archivo.write("(" + estado + "," + cadena[caracter+1:longCad] + "," + "z0" + str(pila) + ")")   
            else:
                archivo.write("(" + estado + "," + "e" + "," + "z0" + ")")   
                print("Cadena Aceptada")          
                archivo.write("\nCadena Aceptada")                
        else:
            if(cad[caracter] == ""):
                estado = "f"                                  
                archivo.write("(" + estado + "," + "e"+ "," + "z0" + ")")   
                print("Cadena Rechazada") 
                archivo.write("\nCadena Rechazada")    
                break
            elif(cad[caracter] == "1"):
                time.sleep(.5)
                pila.pop() 
                if(cad[caracter+1] == ""):
                    estado = "f"
                    archivo.write("(" + estado + "," + "e" + "," + "z0" + str(pila) + ")")    
                    archivo.write("\nCadena Aceptada")             
                    break
                else:
                    estado = "p"                       
                    archivo.write("(" + estado + "," + cadena[caracter+1:longCad] + "," + "z0" + str(pila) + ")")        
            elif(cad[caracter] == "0"):
                estado = "q"
                time.sleep(.5)
                pila.append("X")
                archivo.write("(" + estado + "," + cadena[caracter+1:longCad] + "," + "z0" + str(pila) + ")")             
        print(pila)
    print("\nLas descripciones instantáneas(IDs), se encuentran en el archivo: SalidaP6.txt")

opc = 0
salir = 3
while opc != salir:
    print("\n\n***Menu Principal Programa 6***\n\n")
    print("   ****Digite la opción deseada****")
    opc = int(input('''
    1.- Cadena Manual
    2.- Cadena Automática
    3.- Salir
    '''))    
    if (opc == 1) or (opc == 2):
        evaluarCadena(opc)    
    elif opc == 3:
        print("Saliendo del Programa. Hasta Luego!!!!")
    else:
        print("Opcion inválida, Vuelva a intentar")