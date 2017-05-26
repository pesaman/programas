=begin
Define un método que reciba un hash de tu elección y regrese únicamente las keys del hash. Para este ejercicio utiliza una variante del método each. Crea una prueba para el método.
=end
def juma(x)
  arr = []
  x.each_key {|key| arr << key }
  arr
end

x = {:primero=>1, :segundo=>2, :tercero=>3}

#test
p juma(x) == [:primero, :segundo, :tercero]
