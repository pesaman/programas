def gato_rand

  gato = ["X", "O"].shuffle
  filas = []

    loop do
      filas = []
      a = 0
      b = 0

      for i in 1..3
        r1 = rand(2)
        r2 = rand(2)
        r3 = rand(2)

        filas << gato[r1] << gato[r2] << gato[r3]
      end 

      filas.find_all do |letra|
        if letra == "X"
          a +=1
        else
          b +=1
        end
      end

      break if a == 4 && b == 5 || a == 5 && b == 4
  
    end

  filas.each_slice(3) {|fila| p fila.join}

end

gato_rand()