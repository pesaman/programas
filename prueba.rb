puts "hola mundo"


num1 =10
num2 =10

sum = num1+num2
difference = num1-num2
product = num1*num2
quotient = num1/num2.to_f
modulus = num1%num2
puts sum
puts difference
puts product
puts quotient
puts modulus


a = "Juma"
puts (a.upcase)
#convertir en mayusculas
puts (a.downcase)
#convertir en minusculas
puts (a.length)
#cuenta los caracteres de un string
puts (a.chr)
#muestra el primer caracter de un string
puts (a[-1]=='a')
#valida si el ultimo caracter es el correcto

puts (a[1])
#devuelve el caracter segun la posicion que se le otorgue
puts (a[1]=='J')
#muestra que la comparacion de caracteres falsa
puts (a.capitalize)
#Muestra eñ string como una oracion
puts (a.count "JUma")
#Contador de caracteres
puts (a.empty?)
#verifica si el espacio en el string esta vacio, como tiene caracteres muestra el mensaje de que la comparacion es falsa
puts (a.sub(/[aeiou]/, '*'))
#cambia dentro del string la primer vocal que se encuentre por el signo *
puts (a.gsub(/[aeiou]/, '+'))
#camnia todas las vocales que se encuntran dentro del string por el signo +
puts (a.include? "ma")
#muestra si estan im¡ncluidas dentro del string las palabras que pedimos
puts (a.index('a'))
#imprime en pantalla el index que deseamos segun la posicion que escojamos en memoria
puts (a.reverse)
#imprime el string de atras hacia delante
puts ("hora de aventura".split)
#separa e imprime el string por cadena de caracteres,tambien puede separar por letras
puts ("    hora de aventura    ".strip)
#imprime el mensaje quitando el espacio muerto sn el string

