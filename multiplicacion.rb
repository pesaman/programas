def multiplication_tables(x)#metodo y argumento x
  (1..x).each do |factor| #se asocia cada iterador con un bloque. Devuelve cada valor de la matriz, uno por uno, para el bloque. El valor se almacena en la variable factor.
    (1..10).each do |decimal|
      result = (factor * decimal).to_s #declaramos otra varible en la cual vamos a almacenar lo que tengamos en factor * lo que tengamos decimal
        printf("%-5d", result); 
    end
  print("\n")
  end
end
#test
multiplication_tables(5)
multiplication_tables(7)
