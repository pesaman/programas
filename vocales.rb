#Define el método replace_vowels que reciba una lista de palabras y reemplaza todas las vocales de cada string con una `"x".
def replace_vowels(word)
  new_word = []
  word.each do |i|
    new_word << i.gsub(/[aeiou]/, "x") 
  end
  new_word
end
p replace_vowels(["banana", "apple"]) == ["bxnxnx", "xpplx"]
