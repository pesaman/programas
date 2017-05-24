#Define el método array_index que recibe como argumento un array de letras, así como un factor y deberá regresar un arreglo como el siguiente:
def array_index (array , fact) #metodo con dos argumentos
a=[] #Arreglo vacio
array.each do |i| #tomamos el parametro con el metodo each para crear la variable i  que va a ir recorriendo el array
  (1..fact).each do |j|  #crea el factor que toma el valor 1 hasta el valor que tenga la variable factor, con el each hacemos el mismo recorrido dentro del array para guardarlo en la variable j
     a<<[i,j] # agrega en el arreglo vacio los valores que tienen despues del each en i e j
end #final del ciclo each
end #fianl del ciclo each
  a  #le pedimos al metodo el ultimo valor que necesitamos para ejecutar las pruebas
end #final del metodo
#test
p array_index(["c", "b", "a"], 2) == [["c", 1], ["c", 2], ["b", 1], ["b", 2], ["a", 1], ["a", 2]]
p array_index(["a"], 3) == [["a", 1], ["a", 2], ["a", 3]]


#Fíjate como el factor determina el número de veces que se repetirá el proceso de juntar las letras con el número de vueltas en las que va el factor.