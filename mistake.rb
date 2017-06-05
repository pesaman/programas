# Refactoriza para que solamente te quede un renglón elegante
def dummy_encrypt(string)
  string.reverse.swapcase.gsub(/[aeio]/, "*")
end


# Descompón el método en tres métodos nuevos para hacer más comprensible el código
# Lee el método y comprende que hace y que resultado regresa 
def max_letter_frequency_per_word(sentence)
  sentence.split.select{|word| word.length > 3}.map{ |w| w.count("e") }.max
  array = sentence.split.select{ |word| word.length > 3}
  letters = array.map{ |w| w.count("e") }
  num_array = letters.max
end

def words_longer_than(array,num)
  sentence.split.select{ |word| word.length > 3}
end

def letter_per_word(array,letter)
  array.map{ |w| w.count("e") }
end

def numbers_larger_than(num_array)
  num_array.max
end



#def numbers_larger_than(num_array)
  #Send the longerst number
  #num_array.max
#end
#p numbers_larger_than([2, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 5, 4]) == 5



# Estas son pruebas que no debes de modificar 
# Antes y después de modificar los métodos anteriores estas lineas deben de imprimir "true"
puts dummy_encrypt("EsteEsMiPassword") == "DROWSSApImS*ETS*"
puts max_letter_frequency_per_word("entero entrar envase enviar enzima equino equipo erario erguir eriaza eriazo erigir eringe eficientemente electroencefalografía") == 5