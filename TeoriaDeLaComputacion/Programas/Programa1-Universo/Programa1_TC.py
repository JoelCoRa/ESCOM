# Programa 1.Universo
# Nombre: Colín Ramiro Joel
# Profesor: Juarez Martínez Genaro
# Grupo: 4CM2
# Materia: Teoría Computacional

from itertools import product, repeat ,count
import random as rd
import matplotlib.pyplot as plt

#Función para las permutaciones
def permutaciones(cadena, tam):
    car = list(cadena)
    permutaciones = []

    for i in product(car, repeat = tam):
        permutaciones.append(i)
    return permutaciones

#Función del Cálculo Manual
def calcManual(n):                  
    dig = '01'
    tam = n
    aux = tam           
    archivo = open('SalidaManual.txt','w')
    archivo.write("{")
    while aux >= 0:           
        archivo.write(str(permutaciones(dig, tam-aux))) 
        aux -= 1
    archivo.write("}")
    print("Cadena escrita en el archivo txt, con éxito")    
    archivo.close()  
    archivo = open('SalidaManual.txt','r')
    cad = archivo.read()
    caract = list(cad)
    unos = caract.count('1') #Eje Y
    ceros = caract.count('0')
    tot = unos + ceros #Eje X
    print("La cantidad de 1s en el archivo es de: " + str(unos))      
    archivo.close()
    grafica(unos, tot)           
#Función del Cálculo Automático
def calcAuto():
    n = rd.randint(1,25)    
    print("El valor de n es: "+ str(n))       
    dig = '01'
    tam = n
    aux = tam
    archivo = open('SalidaAuto.txt','w')
    archivo.write("{")
    while aux >= 0:
        archivo.write(str(permutaciones(dig, tam-aux)))
        aux -= 1
    archivo.write("}")
    print("Cadena escrita en el archivo txt, con exito")
    archivo.close()
    archivo = open('SalidaAuto.txt','r')
    cad = archivo.read()
    caract = list(cad)
    unos = caract.count('1')
    ceros = caract.count('0')
    tot = unos + ceros #Eje X
    print("La cantidad de 1s en el archivo es de: " + str(unos))       
    archivo.close()    
    grafica(unos, tot)    
#Fución que grafica
def grafica(unos, tot):
    x = [0,tot] 
    y = [0,unos]     
    plt.plot(x,y,color="blue")
    plt.show()
op = 0
salir = 3
while op != salir:
    print("\n********Menu Principal********\n")
    print("   ****Digite la opción****")
    op = int(input('''
    1.Manual    
    2.Automático
    3.Finalizar
    '''))
    if op == 1:
        n = int(input("Ingresa el valor de n: "))
        calcManual(n)
    elif op == 2:        
        calcAuto()
    elif op == 3:
        print("Hasta Luego")
    else:
        print("Opción inválida, Vuelva a intentar")