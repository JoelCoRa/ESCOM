# Práctica 5.Gramática
# Nombre:    Colín Ramiro Joel
# Profesor:  Hernández Olvera Luis Enrique
# Grupo:     5CV2
# Materia:   Compiladores

class Pila():
    def __init__(self):
        self.elementos = []
    def push(self,dato):
        self.elementos.append(dato)
    def pop(self):
        return self.elementos.pop()
    def top(self):
        return self.elementos[-1]
    def mostrar(self):
        print(self.elementos)
    def limpiarPila(self):
        del self.elementos[:]

def funRecursiva(pilaVi,indice,cad):  
    pilaN = copy.deepcopy(pilaVi)
    pilaN.mostrar()            

    if(pilaN.top() == "a" and cad[indice] == "a" or pilaN.top() == "b" and cad[indice] == "b" or pilaN.top() == "+" and cad[indice] == "+" or pilaN.top() == "*" and cad[indice] == "*"):
        pilaN.pop()           
        funRecursiva(pilaN,indice+1,cad)
        return pilaN

    # Regla 1
    if(pilaN.top() == "E"):        
        pilaN.pop()        
        pilaN.push("R")
        pilaN.push("M")        
        pilaN.mostrar()   
    elif(pilaN.top() == "R"):        
        pilaN.push("M")        
        pilaN.push("+")        
        funRecursiva(pilaN,indice,cad)
        pilaN.pop()
        pilaN.pop()
        funRecursiva(pilaN,indice,cad)
        pilaN.pop()
        pilaN.push("R")
        pilaN.push("M")
        pilaN.pusg("-")
        funRecursiva(pilaN,indice,cad)
    
    # Regla 2
    if(pilaN.top() == "M"):        
        pilaN.pop()
        pilaN.push("S")
        pilaN.push("I")                
    elif(pilaN.top() == "S"):        
        pilaN.push("I")        
        pilaN.push("*")           
        funRecursiva(pilaN,indice,cad)
        pilaN.pop()
        pilaN.pop()
        funRecursiva(pilaN,indice,cad)

    # Regla 3
    if(pilaN.top() == "I"):
        pilaN.pop()
        pilaN.push("T")
        pilaN.push("a")                  
        funRecursiva(pilaN,indice,cad)
        pilaN.pop()
        pilaN.push("T")
        pilaN.push("b")          
        funRecursiva(pilaN,indice,cad)
        pilaN.pop()
        funRecursiva(pilaN,indice,cad)
        
    elif(pilaN.top() == "T"):
        pilaN.push("a")
        funRecursiva(pilaN,indice,cad)
        pilaN.pop()
        pilaN.push("b")
        funRecursiva(pilaN,indice,cad)
        pilaN.pop()
        funRecursiva(pilaN,indice,cad)     

    if(pilaN.top() == "&"):
        print("La cadena es válida...")      
    else:
        print("Cadena inválida")

if __name__ == "__main__":
    print("\n********Menu Principal********\n")
    cad = input("****Ingrese la Cadena a verificar****\n")  
    indice = 1
    pila1 = Pila()
    pila1.push("&")
    pila1.push("E")

    # pila1.pop()    
    funRecursiva(pila1,indice,cad)
    