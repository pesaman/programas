#Define el método replace_vowels que reciba una lista de palabras y reemplaza todas las vocales de cada string con una `"x".

p "hello".gsub(/[aeiou]/, 'x')                  #=> "h*ll*"
def replce_vowels(array)
  array.gsub(/[aeiou]/, 'x')
 
end
p replace_vowels(["banana", "apple"]) #== ["bxnxnx", "xpplx"]