 #Define un método que reciba un hash de tu
# elección que imprima las keys y values del hash. 
# Crea las pruebas correspondientes para este método.

def juma(hash) # hash con parametro

  hash.each { |x, y| 
    return "key is #{x} value is #{y}."
    #retorna la llave del hash con su valor que es y , concatenacion!
  }
end

hash = { :nombre => "Juan Manuel" } 
#declaramos la llave con su valor 

#test
p juma(hash) == "key is nombre value is Juan Manuel."

