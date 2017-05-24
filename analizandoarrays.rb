

def average (array) # creacion del metodo,nombre y parametros
  
  x=0 #variable sin valor 
  
  array.each do |i| #parametro array en donde se emplea el metodo each que es el que cuenta los valores del arreglo y los inserta en una nueva variable que llamamos i
    x= i+x # utilizamos la variable x que vale 0 y creamos un ciclo con el each en el cual el metodo va a tomar los valores de cada posicion del arreglo lo va a sumar y el valor de x va a ir cambiando hasta terminar de pasar por todas las posiciones
  end # final del ciclo de each
  
  x= x/array.length.to_f #volvemos a tomar la variable pero esta vez ya tiene el valor final de la suma de todo el arreglo, ahora lo dividimos por el numero de elementos del arreglo con array.length y lo convertimos en tipo float para poder ver los puntos decimales con .to_f y asi obtenemos el resultado de la division con puntos decimales, para poder tener el promedio de dicho arreglo.
end #finalizacion del metodo

# Pruebas
p average([8, 8, 7, 6, 9]) == 7.6 
p average([5, 5, 5, 8, 8, 7, 7, 7]) == 6.5
p average([5, 5, 5, 8, 8, 7, 7, 2]) == 5.875








