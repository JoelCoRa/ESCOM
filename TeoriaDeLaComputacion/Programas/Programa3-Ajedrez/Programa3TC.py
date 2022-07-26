# Programa 3.Tablero de Ajedrez
# Nombre: Colín Ramiro Joel
# Profesor: Juarez Martínez Genaro
# Grupo: 4CM2
# Materia: Teoría Computacional


from graphics import *
import random
class NFA(object):
  def __init__(self, Q, sigma, delta, q0, Fin):   
    QEstados = [] #Conjunto finito "estados"
    for i in range(Q):
        QEstados.append("q"+str(i+1))
    self.Q = QEstados
    self.sigma = sigma #Conjunto finito "Alfabeto"
    self.delta = delta  #Función de transición
    self.q0 = q0 #Estado Inicial
    self.Fin = Fin #Estado de Aceptación (final)
    self.estado_actual = [q0]
    self.camino = []
  def getEstAct(self):
      return self.estado_actual

  def setEstAct(self, estado_actual):
    self.estado_actual = estado_actual

  def getFin(self):
    return self.Fin

  def validRecursivo(self, cadena, estadoActual):
    if cadena == "":
      if estadoActual in self.getFin():
        return True
      else:
        return False
    siguientesEstados = self.delta[estadoActual][cadena[0]]
    if isinstance(siguientesEstados, list):
      for estado in siguientesEstados:
        if self.validRecursivo(cadena[1:],estado):
          self.camino.append(estado)
          return True        
    else:
      if self.validRecursivo(cadena[1:], siguientesEstados):
        self.camino.append(siguientesEstados)
        return True
      else:
        return False

  print('''Elija una opcion:\n
    1.-Automático
    2.-Manual
    ''')
opc = input()
if (opc == '1'):
    elegir = False
elif (opc == '2'):
    elegir = True

def generarCadena(ingresar = False, automata = None, estado = None):
  if not ingresar:
    cad = ""
    tam = random.randint(2,100)
    for i in range(tam):
      if random.randint(0,1):
        cad+="r"
      else:
        cad+="b"
    cad+="b"
    return cad 
  while 1:
    cad = input("Ingresa tu cadena: ")
    if(len(cad) <= 20):
        if automata.validRecursivo(cad, estado):
            automata.camino.reverse()   
            return cad     
        else:
            print("Cadena no valida")
            automata.camino.clear()
    else:            
        print("La cadena a ingresar debe de ser de longitud menor o igual a 20 caracteres.")
    
    
    
q = 16
sigma = ["r", "b"]
delta = {
    "q1" : {"r": ["q6"], "b": ["q2","q5"]},
    "q2" : {"r": ["q1","q3","q6"], "b": ["q5","q7"]},
    "q3" : {"r": ["q6","q8"], "b": ["q2","q4","q7"]},
    "q4" : {"r": ["q3","q8"], "b": ["q7"]},
    "q5" : {"r": ["q1","q6","q9"], "b": ["q2","q10"]},
    "q6" : {"r": ["q1","q3","q9","q11"], "b": ["q2","q5","q7","q10"]},
    "q7" : {"r": ["q3","q6","q8","q11"], "b": ["q2","q4","q10","q12"]},
    "q8" : {"r": ["q3","q11"], "b": ["q4","q7","q12"]},
    "q9" : {"r": ["q6","q14"], "b": ["q5","q10","q13"]},
    "q10" : {"r" : ["q6","q9","q11","q14"], "b" : ["q5","q7","q13","q15"]},
    "q11" : {"r" : ["q6","q8","q14","q16"], "b" : ["q7","q10","q12","q15"]},
    "q12" : {"r" : ["q8","q11","q16"], "b" : ["q7","q15"]},
    "q13" : {"r" : ["q9","q14"], "b" : ["q10"]},
    "q14" : {"r" : ["q9","q11"], "b" : ["q10","q13","q15"]},
    "q15" : {"r" : ["q11","q14","q16"], "b" : ["q10","q12"]},
    "q16" : {"r" : ["q11"], "b" : ["q12","q15"]},
}
q0 = "q1"
Fin = ["q16"]
automata = NFA(q, sigma, delta, q0, Fin)

def recalcularRuta(automata, estadoIni):  
  while 1:
    automata.camino.clear()
    if elegir:
      nuevaRuta = generarCadena(True, automata, estadoIni) #Manual
      break
    else: #Auto
        nuevaRuta = generarCadena()
    if automata.validRecursivo(nuevaRuta, estadoIni):
      automata.camino.reverse()    
recalcularRuta(automata, automata.q0)
print("El camino que tomara la pieza es: "+ str(automata.camino))     

def dibujar():       
    win  = GraphWin("Ajedrez", 500, 500)
    win.setBackground(color_rgb(0,0,0))
    rect = Rectangle(Point(0,0),Point(125, 125))
    rect.setFill(color_rgb(255, 0, 0)) 
    
    rect.draw(win)   
    rect = Rectangle(Point(125,125),Point(250, 250))
    rect.setFill(color_rgb(255, 0, 0))    
    rect.draw(win)
    rect = Rectangle(Point(250,250),Point(375, 375))
    rect.setFill(color_rgb(255, 0, 0))  
    rect.draw(win)   
    rect = Rectangle(Point(375,375),Point(500, 500))
    rect.setFill(color_rgb(255, 0, 0))
    rect.draw(win)
    rect = Rectangle(Point(0,250),Point(125, 375))
    rect.setFill(color_rgb(255, 0, 0))
    rect.draw(win)
    rect = Rectangle(Point(250,0),Point(375, 125))
    rect.setFill(color_rgb(255, 0, 0))
    rect.draw(win)
    rect = Rectangle(Point(375,125),Point(500, 250))
    rect.setFill(color_rgb(255, 0, 0))
    rect.draw(win)
    rect = Rectangle(Point(125,375),Point(250, 500))
    rect.setFill(color_rgb(255, 0, 0))
    rect.draw(win) 
    
    win.getMouse()
    win.close()
i=0 
estadoActual = automata.q0
while True:    
    siguienteJugada = automata.camino[i]    
    print("Esta en la casilla: " + estadoActual+ " La siguiente jugada es: " + siguienteJugada)
    i+=1     
      
    estadoActual = siguienteJugada
    if siguienteJugada in automata.Fin:
      print("La pieza llego a la última casilla")
      break  
dibujar()

