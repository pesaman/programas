class Vehicle
  @@var_class = 0
  
  def initialize
    @@var_class += 1
  end
# variable de clase inicializada en 1, esta variable como es de clase esta en un metodo de clase 
# va a cambiar su valor en las clases hijas
  def self.number_of_vehicles
    "This Superclass has created #{@@var_class} vehicles"
  end
end
#clase hija
# variable que es heredad de la clase padre incrementada en 1
class Car < Vehicle
end

class Bus < Vehicle
end
#utilice el metodo initialize para declarar el valor inicial de la variable de clase y asi lo hereden las clases hijas de la super clase Vehicle
#test
# instancias
car_1 = Car.new
car_2 = Car.new
bus_1 = Bus.new
# clase llamando a un metodo de clase
p Car.number_of_vehicles == "This Superclass has created 3 vehicles"

