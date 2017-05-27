#Crea el método vowels que recibe una lista de palabras words y remueve las vocales de cada string. Haz pasar la prueba correspondiente.
def vowels(words)
  new_words = []
  words.each do |i|
    new_words << i.gsub(/[aeiou]/, "") 
  end
  new_words
end
p vowels(["banana", "carrot", "pineapple", "strawberry"]) == ["bnn", "crrt", "pnppl", "strwbrry"]


=begin
Suma  de numeros
Dados dos números, que pueden ser positivos y negativos, encuentra la suma de todos los números entre ellos, incluyendo esos números también. Si los dos números son iguales, regresa alguno de los dos.
=end
def get_sum(n1,n2)
  sum=0
  if n1==n2
    sum=n1#sum adquiere el valor de n1, si tienen el mismo valos se muestra cualquiera de los dos 
  elsif n2<n1 
     (n2..n1).each do |i|
      sum+=i 
    end 
  else
    (n1..n2).each do |i|
      sum+=i
    end #el valor de sum puede ser positivo o negativo pero aun asi se hace la suma por eso puse tres condiciones, con dos me salia mi comprobacion falsa
  end
  sum
end

#pruebas
p get_sum(1, 0) == 1
p get_sum(1, 2) == 3
p get_sum(0, 1) == 1
p get_sum(1, 1) == 1
p get_sum(-1, 0) == -1
p get_sum(-1, 2) == 2

=begin 
palabras y caracteres
Crea un método que reciba una oración y regrese un string señalándonos el número de palabras y caracteres que contiene, sin contar los espacios en blanco, tu método deberá pasar las siguientes
=end

def char_word_counter(sentence) #metodo que reciba un string
  words = sentence.split.count #divide la sentencia y la cuenta al dividir la palabra ya no tiene espacios y es mas facil para la computadora contar las palabras 
  b = (sentence.chars.count - (words - 1)) 
  "This sentence has #{words} words & #{b} characters"
end


p char_word_counter("This is a sentence") == "This sentence has 4 words & 15 characters"
p char_word_counter("This easy") == "This sentence has 2 words & 8 characters"
p char_word_counter("This is a very complex line of code to test our program") == "This sentence has 12 words & 44 characters"
p char_word_counter("And when she needs a shelter from reality she takes a dip in my daydreams") == "This sentence has 15 words & 59 characters"

#Buscando Hashes

=begin
 Ahora vamos a aprovechar los Hashes como herramienta de organización para distinguir alimentos por grupo alimenticio. Para esto deberás generar un método que tome como parámetro un string que contenga una comida, y buscarlo en el siguiente hash, regresando su key como valor de retorno, si no encuentra la comida deberá regresar "comida no encontrada". 
=end
def food_group(food)
  a=""
  b=[]
  c=[]
  food_groups = {
    "grano" => ['Arroz','Trigo', 'Avena', 'Cebada', 'Harina'],
    "vegetal" => ['Zanahoria', 'Maiz', 'Elote', 'Calabaza', 'Papa'],
    "fruta" => ['Manzana', 'Mango', 'Fresa', 'Durazno', 'Piña'],
    "carne" => ['Res', 'Pollo', 'Salmon', 'Pescado', 'Cerdo'],
    "lacteo" => ['Leche', 'Yogurt', 'Queso', 'Crema']
    } #grupo de comiida con sus key
  food_groups.each_value {|value| b<<value}#comparacion de cada elemento del arreglo con la variable b, si son iguales busco la llave que pertenece a value
  b.each do |j|
    j.each do |i|
      if i==food
        c=j
        a=food_groups.key(c) 
      end
    end
  end
  a="comida no encontrada" if a==""#si no encuentra elemento en el arreglo 
  a
end
# Driver code
    p food_group('Crema') == "lacteo"
    p food_group('Res') == "carne"
    p food_group('Piña') == "fruta"
    p food_group('Caña') == "comida no encontrada"
