# class Cat
#   CAT_YEARS = 7

#   def initialize(age) #metodo que tendra el valor de la instancia
#     @age = age
#   end

#   def es_mayor_que?(comparable) #compara si age es mayor que comparable
#     age > comparable.age
#   end

#   protected #Desde adentro de la clase, los métodos protected sólo son accesibles como métodos public
#   def age
#     cat_age
#   end

#   private #método private solo se puede invocar desde el contexto del objeto actual. No se pueden invocar métodos private de otros objetos aunque sean de la misma clase.
#   def cat_age
#     @age * CAT_YEARS
#   end

# end

# #test
# katty = Cat.new(2)
# peto = Cat.new(4)

# p katty.es_mayor_que?(peto) == false
# #=>true
# p katty.cat_age
# class Person
# def initialize(name,year)
#   @name = name
#   @year = year
# end
# def age
#   "#{@name} is #{years_old} years old."

# end
# private # aqui generamos el error por declarar que nuestro metodo es privado
# def years_old # la clase time, trae el año actual y lo restamos con el año que el usuario declara en la instancia 
#   Time.now.strftime("%Y").to_i-@year
# end
#  end

# carlos=Person.new('Carlos', 1987) #variables de instancia 
# martha=Person.new('Martha', 1991)


# #test
# p carlos.age == "Carlos is 30 years old."
# #=>true
# p martha.age == "Martha is 26 years old."
# #=>true

# p carlos.years_old
# #=>private method `years_old'...(NoMethodError)


class Stair

  def initialize(material, size)
    @material=material
    @size=size
  end

  def larger_size_than?(x)
    size=x.size
    @size > size
  end
protected
  def size
    @size
  end
  

end

#test
metal = Stair.new("Metal", 54)
wood = Stair.new("Wood", 23)
p "Well done!" if metal.larger_size_than?(wood)

#p metal.size    #marca error por ser un metodo protegido




