# Define un método que reciba un hash de tu elección 
# y regrese únicamente los valores del hash. 
# Para este ejercicio utiliza una variante del método each. 
# Crea una prueba para el método.

def value(x)
  #hash.values
  arr = []
  x.each_value {|value| arr << value }
  arr
#asigna el valor al arreglo insertando los valores de la varible value recorriendo con el metodo each
end

x = {:one=>1, :two=>2, :thre=>3}
#llaves y valores

#test
p value(x) == [1, 2, 3]

