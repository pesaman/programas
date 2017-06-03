puts "self es igual a: #{self}" # Esto es igual al main Este objeto es el contexto más alto del programa o el top-level namespace.

#Self en diferentes contextos dentro de una clase
class DummyClass

  # ------ Self en la clase => DummyClass self es igual al nombre de la clase en donde se encuenta
  puts "Esto esta corriendo cuando se define la clase"
  puts "En este contexto self es igual a: #{self}"

  # ------ Self en un metodo => #<DummyClass:0x007fa3388ae9a8> self es igual al nombre to_s de la clase String y id
    def intance_method
      puts "Dentro de un método de instancia"
      puts "En este contexto self es igual a: #{self}"
      puts "Metodo.class en el metodo usando self #{self.class}" # => DummyClass
    end

  # ------ Self en un metodo de clase declarado con self en el nombre del metodo
  # => En este contexto el nombre de la clase es igual a DummyClass
    def self.class_method
      puts "Dentro de un método de clase"
      puts "En este contexto self es igual a: #{self}"
      puts "Metodo.class en el metodo de clase self #{self.class}" # => Class apunta hacia ssi mismo
    end
end

dummy_class = DummyClass.new()
puts dummy_class.intance_method
puts DummyClass.class_method 

p dummy_class.class # La clase a la que apunta la instancia

