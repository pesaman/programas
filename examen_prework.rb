=begin
¿Qué tipo de datos son cada una de las siguientes variables?
¿De que clase es cada uno y como lo puedes comprobar?
=end
v = 9.0  # variable de tipo float
w = ["1", "f", 4] # es un array
x = 1.4 #variable de tipo float
y = "3" # es un string
z = {name: "Javier", email: "mail@codea.mx", fase: 1} #es un hash

p (v).class
p (w).class
p (x).class
p (y).class
p (z).class

#.class me muestra de que tipo son mis variables

# Obtén el valor del cuarto elemento de la lista `fruits` utilizando código. Y cambia el segundo valor de la lista por una fruta diferente.
fruits = ["apple", "orange", "peach", "pineapple", "kiwi"]
# Respuesta
p fruits[3]
fruits[1]="strawberry"
p fruits

# Obtén el último elemento de la lista `sports`.
sports = ["rugby", "tennis", "soccer", "cycling", "baseball"]
# Respuesta
p sports[4]


# Añade un elemento más al principio de la lista `gadgets`.
gadgets = ["smartphone", "laptop", "tablet"]
# Respuesta
gadgets.unshift("television")
p gadgets

#Crea la variable my_hash e inicialízala a un Hash vacío.
my_hash={}

#Crea la variable grades e inicialízala a un Hash con 3 nombres de materias con una calificación correspondiente.
grades={math: 8, history: 10, teory: 7} 
#A la variable grades del ejercicio anterior agrégale una materia más con su calificación correspondiente.
grades[:paint]=9
#Lee el value de la materia con la calificación más alta de grades y asígnalo a la variable highest_grade.
highest_grade=grades[:history] #crea variable highest_grade y la igualo al valor mas alto en grades9 
p highest_grade

#IF
#Crea el método large_word que nos diga si una palabra tiene muchas letras. Si la palabra tiene más de 6 letras regresa el string "Large", y si es menor "Small".

  def large_word (word)
  a=""
  if word.length>6
    a="Large"
  else
    a="Small"
  end
  a
end
#pruebas
p large_word("Juan Manuel")=="Large"
p large_word("smile")=="Small"


#LOOP
#Crea el método print_plus_ten que reciba un arreglo de números, e imprima la suma de cada número más 10.
def print_plus_ten(ar)
  ar.each do |x|
    p x+10 #en el metodo se imprime el elemento mas 10
  end
end
print_plus_ten([1,2,3,5])

#Crea el método plus_ten_array muy parecido al ejercicio anterior, con la diferencia que no imprime los números sino que regresa un nuevo arreglo con los elementos del primer array más 10.
def plus_ten_array(ar)
  ar2=[]
  ar.each do |x|
    ar2<<x+10 
    end
  ar2
end
# Pruebas
p plus_ten_array([4,3,7,]) == [14, 13, 17]

=begin
METODO
Crea el método odd_or_even_plus, que recibe dos argumentos: min y max. Regresa un arreglo donde si el número es par le suma 2 y si es non le suma 3
=end
 def odd_or_even_plus(min, max)
  (min..max).map do |x|
    if x%2==1
      x+3
    else
      x+2
    end
  end
end
# Pruebas
p odd_or_even_plus(3, 9) == [6, 6, 8, 8, 10, 10, 12]



  

