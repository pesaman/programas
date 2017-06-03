# ejemplo de Herencia y Variables de Clase y Variables de Instancia de una Clase
class A
  @@value = 1
  def A.value 
    @@value
  end
end

puts A.value  # 1 

class B < A
  @@value = 2
end

puts A.value  # 2
puts B.value  # 2

class C < A; @@value = 3; end

puts B.value  # 3
puts C.value  # 3


class Vehicle
  @@fabric = 0 # las variables de clase son compartidas por una clase y todas sus sub clases
  
  def initialize
    @@fabric += 1
  end

  def self.number_of_vehicles
    "This Superclass has created #{@@fabric} vehicles" #concatenamos el valor de la variable de calse para saber el valor que tendra
  end
end

class Car < Vehicle # creamos dos clases menores para qque sean las subclases de la super clase Vahicle
end

class Bus < Vehicle
end

#test
car_1 = Car.new
car_2 = Car.new
bus_1 = Bus.new

p Car.number_of_vehicles == "This Superclass has created 3 vehicles"
# => true