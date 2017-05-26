def canonical(word) #metodo canonical
  word.downcase!
  word.chars.sort
end
#metodo para saber si una palabra es anagrama de otra
def are_anagrams?(word1, word2)
  if canonical(word1) == canonical(word2) then true else false end
#si las palabras son anagramas regresa true de lo contrario regresa false
end


#prueba
p are_anagrams?("hola", "aloh")
p are_anagrams?("hola", "mundo")



def anagrams_for(word, array)#Metodo para saber que palabras de un diccionario son anagramas 
  word.downcase!
  
  arr = []#Arreglo vacio para meter los que sean anagramas
  #Separar la palabra en su forma canonica
  cano = word.chars.sort
  #iterar dentro de cada palabra del array
  array.each do |dicc|
    word_cano = dicc.chars.sort
    #si la palabra es igual a la palabra del array  a las 2 en su forma canonica    
    if cano == word_cano     
      arr << dicc
    #mete la palabra a el array, de lo contrario deja el array igual   
    else
       arr
    end
  end
  #Regresar el array lleno si habia palabras
  arr
end
 
p anagrams_for("roma",["omar","roma","pozole","mora","adios"])
p anagrams_for("amor",["omar","roma","pozole","mora","adios"])