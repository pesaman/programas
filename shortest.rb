#Crea el método shortest que recibe como parámetro un Array de Strings y regresa el string o strings más cortos dentro de un arreglo.


def shortest (arr)
 arr_min = []
  min = arr[1]
  arr.each do |word|
 if word.length <= min.length
min = word
arr_min << word
      end
end
  arr_min
end

 #Pruebas
p shortest(['uno', 'dos', 'tres', 'cuatro', 'cinco']) == ["uno", "dos"]
p shortest(['gato', 'perro', 'elefante', 'jirafa']) == ["gato"]
p shortest(['verde','rojo','negro','morado']) == ["rojo"]

