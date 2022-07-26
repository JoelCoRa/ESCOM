# Programa 7.Palindromes
# Nombre: Colín Ramiro Joel
# Profesor: Juarez Martínez Genaro
# Grupo: 4CM2
# Materia: Teoría Computacional

from random import randint

def palindrome(opcion):
    archivo = open("SalidaP7.txt","w")
    archivo.write("**Este es el archivo de txt donde se encuentra la construcción del Palindrom**\n\n")
    if opcion == 1:
        print("\nSe ha seleccionado el modo manual...")
        longPalindrome = int(input("Digite la longitud: "))
    elif opcion == 2:
        print("\nSe ha seleccionado el modo automático...")
        longPalindrome = randint(1,100000)
    print("La longitud del Palindrome es: " + str(longPalindrome) + "\n")
    archivo.write("La longitud del Palindrome es: " + str(longPalindrome) + "\n")
    longPal2 = int(longPalindrome / 2)
    if(longPalindrome % 2) != 0:
        impar = True
    else:
        impar = False
    palindrome = "P"
    print("Construyendo Palindrome...\n" + palindrome + "\n")
    archivo.write("Construyendo Palindrome...\n" + palindrome + "\n")

    for i in range(0, longPal2 + 1):
        if (i == longPal2):
            finPalin = palindrome.split()
            if(impar == False): #Regla de Producción (1) P -> e
                archivo.write("Se aplica la regla de producción 1: (P -> e)  ")
                archivo.write(str(finPalin) + "\n")
            if(impar == True): 
                regla_2_3 = randint(2,3)            
                if(regla_2_3 == 2): #Regla de Producción (2) P -> 0
                    archivo.write("Se aplica la regla de producción 2: (P -> 0)  ")
                    palindrome = "0" + palindrome                    
                    print(palindrome)
                    archivo.write(str(finPalin) + "\n")    
                if(regla_2_3 == 3): #Regla de Producción (3) P -> 1
                    archivo.write("Se aplico la regla de producción 3: (P -> 1)  ")
                    # finPalin[0] = '1'
                    # print(finPalin)
                    palindrome =  "1" + palindrome
                    print(palindrome)
                    archivo.write(str(finPalin) + "\n")
        else:
            regla_4_5 = randint(4,5)
            if (regla_4_5 == 4): #Regla de Producción (4) P -> 0P0
                archivo.write("Se aplico la regla de producción 4: (P -> 0P0)  ")
                palindrome = "0" + palindrome + "0"
                print(palindrome)
                archivo.write(str(palindrome) + "\n")
            if (regla_4_5 == 5): #Regla de Producción (5) P -> 1P1
                archivo.write("Se aplico la regla de producción 5: (P -> 1P1)  ")
                palindrome = "1" + palindrome + "1"
                print(palindrome)
                archivo.write(str(palindrome) + "\n")
    print("\nLa construcción de los palindromos se encuentra en el archivo 'SalidaP7.txt.'")
    print("\nEl palindrome final generado es: " + palindrome[0:longPal2] + palindrome[longPal2+1::]+ "\n")  
    archivo.write("\nEl palindrome final generado es: " + palindrome[0:longPal2] + palindrome[longPal2+1  ::]+ "\n")         

opc = 0
salir = 3
while opc != salir:
    print("***Menú Principal Programa 7***")    
    print("¿Cómo será la longitud?")
    opc = int(input('''
    1.- Longitud Manual
    2.- Longitud Aleatoria
    3.- Salir del Programa    
    '''))   
    if (opc == 1) or (opc == 2):
        palindrome(opc)    
    elif opc == 3:
        print("Saliendo del Programa. Hasta Luego!!!!")    
    else:
        print("Opcion inválida, Vuelva a intentar")