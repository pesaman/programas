class Rectangle
  attr_accessor :base, :height
  #Metodo que inicizializa
  def initialize(base, height) #metodo initialize con dos argumentos, espera los valores que se generen en la instancia de la clase
    @base = base
    @height = height
  end
  #los valores seran asignados por medio de la instacia que se cree 
  #Metodo para obtener el area del rectangulo
  def area 
    base * height 
  end
  def perimeter
    2 * (base + height)
  end
  #Metodo para obtener la diagonal
  def diagonal
    Math.sqrt((base ** 2) + (height ** 2))#la raiz cuadrada la calculamos primero elevando al cuadrado la base por la altura base **2 + altura**2 y se suman despues se ontiene la raiz cuadrada, dentro de las librerias de ruby encontramos Math.sqrt que obtiene la raiz cuadrada y retorna el balor en tipo float
  end

  #Metodo para saber si es un cuadrado
  def square?
    base == height
  end

end

# Pruebas

rectangle = Rectangle.new(20, 10) 
puts rectangle.area == 200
puts rectangle.perimeter == 60
puts rectangle.diagonal == 22.360679774997898
puts rectangle.square? == false

rectangle2 = Rectangle.new(10, 10)
puts rectangle2.area == 100
puts rectangle2.perimeter == 40
puts rectangle2.diagonal == 14.142135623730951
puts rectangle2.square? == true