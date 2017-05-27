=begin
Escribe un programa llamado diccionary_sort que pida al usuario capturar las palabras que quiera (una palabra por línea) y para finalizar la captura tenga que presionar "enter".

Deberás utilizar un array para guardar las palabras.

Una vez que el usuario presiona "enter" el programa deberá arrojar la lista de palabras en orden alfabético.
=end

def diccionary_sort()
  ar=[]
  a="."
  while a!=""
    p 'Escribe o presiona "enter" para terminar:'
    a=gets.chomp
    ar<<a
  end 
  ar.pop() #elimina el ultimo valor del arreglo, que es el enter para salir del while
  ar2=ar.sort_by{|i| i.downcase} #acomoda los elementos por orden alfabetico 
  p "Tu diccionario tiene #{ar.length} palabras" #se imprime cada elemento del arreglo en otra linea   
  ar2.each {|x| puts x}# creamos un each para guardar los datos que ingreso el usuario dentro de un arreglo que asignamos a x 
end

diccionary_sort

# .sort_by acomoda los elementos de un arreglo por  orden alfabetico, entre {} tiene el metodo downcase para que primero los convierta en minusculas, luego los acomode, pero al guardar los elementos en ar2 se mantengan como los ingresa el usuario

