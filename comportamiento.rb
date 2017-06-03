class Animal
  
  def speak #Se toma el mismo metodo para las dos sub clases de la super clase Animal, asi se logra refactorizar el progrma
    "Hello!"
  end

end

  class Dog  < Animal
  end

  class Cat < Animal
  end

drako = Dog.new
peto = Cat.new
p drako.speak == "Hello!"          
# => true
p peto.speak == "Hello!"           
# => true



