#El método obtiene un mensaje de ocultar y devuelve un mensaje original
def baconian_cipher(code)
 #Declarar una variable de cadena vacía
  result = ""
  #Primero, dividimos el código en cinco partes.
  string_reading = code.scan(/...../)
  #Entonces hicimos un iterador para obtener cuántas palabras tienen el código
  string_reading.each do |x|
    #En la variable bacon_code obtiene el resultado del iterador
    bacon_code = x
    # En la variable bacon_code obtiene el resultado del iterado
    case bacon_code
      when "AAAAA" then result << "a"
      when "AAAAB" then result << "b"
      when "AAABA" then result << "c"
      when "AAABB" then result << "d"
      when "AABAA" then result << "e"
      when "AABAB" then result << "f"
      when "AABBA" then result << "g"
      when "AABBB" then result << "h"
      when "ABAAA" then result << "i"      
      when "ABAAB" then result << "k"
      when "ABABA" then result << "l"
      when "ABABB" then result << "m"
      when "ABBAA" then result << "n"
      when "ABBAB" then result << "o"
      when "ABBBA" then result << "p"
      when "ABBBB" then result << "q"
      when "BAAAA" then result << "r"
      when "BAAAB" then result << "s"
      when "BAABA" then result << "t"
      when "BAABB" then result << "v"
      when "BABAA" then result << "w"  
      when "BABAB" then result << "x"
      when "BABBA" then result << "y"
      when "BABBB" then result << "z"
      else 
        "Error recibido"
    end 
  end
  #llama el resultado
    result
end

# Pruebas

p baconian_cipher("BAABAAABAAAABAABAAABABBBAAABAABAAAAABBABAAAAAABABAAAAAABAAABAAABAABAAAABBAAAAABAABBAB") == "teesperoalascinco"
p baconian_cipher("ABABAAAAAAAAABAABABAAAAAABAABBAABAAAABAABAAABAAABBABBABBAAABBAABABAAAAAABAABAAAB") == "laclaveesdostres"