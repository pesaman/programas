#Crea el método longest que recibe como parámetro un Array de Strings y regresa el string o strings más largos dentro de un arreglo.
def longest (arr) #metodo con un parametro (array de strings)
 arr_max = [] #arreglo vacio
  max = arr[3] #comparacion de parametros asignando valor de 3 al parametro arr
  arr.each do |word|#iterador each
 if word.length >= max.length #if dentro del each para hacer la comparacion, si el tamaño de caracteres de word es mayor o igual al de max entra el if
max = word
arr_max << word #los valores de word se anexan a arr_max
      end #fin if
end #fin each
  arr_max #solicitando ultimo valor de la condicion
end

# Pruebas
p longest(['tres', 'pez', 'alerta', 'cuatro', 'tesla', 'tropas', 'siete']) == ["alerta", "cuatro", "tropas"]
p longest(['gato', 'perro', 'elefante', 'jirafa']) == ["elefante"]
p longest(['verde', 'rojo', 'negro', 'morado']) == ["morado"]