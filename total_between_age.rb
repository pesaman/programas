# creo un metodo que recibe tres parametros
def total_between_age(array, min_age, max_age)
  #varible donde aplicaremos el contador que empiece de 0
  count = 0
#each para los valores dentro del arreglo y se insertan a num
  array.each do |num| 
    #condicion
    if num >= min_age && num <=max_age
      count = count + 1
    end #fin condicion
  end# fin each
  count #traemos el valor dentro del contador 
end #fin def 

# Pruebas
p total_between_age([10, 20, 30, 40, 50, 60], 20, 40) == 3
p total_between_age([18, 19, 20, 23, 24, 27], 20, 27) == 4