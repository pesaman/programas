def factorial(num)
  #hace un recorrido empezando del valor 1 hasta el valor otorgado en la varible num, sies igual a 1 entonces con el inject sigue contando y multiplicando cada valor hasta llegar al ultimo valor 
  ((1..(num.zero? ? 1 : num)).inject(:*))
end

# Pruebas

p factorial(5) == 120
p factorial(4)  == 24
p factorial(0)  == 1
p factorial(1)  == 1
p factorial(6)  == 720


