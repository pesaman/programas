
# p abecedario = ('A'..'Z').last(20)
# p que_sera = Array.new(3) {abecedario.pop(2) }


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

d = []

table = [["Nombre", "Rodrigo Garcia"],["Edad", 13], ["Genero", "Masculino"], ["Grupo", "Primero"], ["Calificaciones", [9, 9, 7, 6, 8]]],

        [["Nombre", "Fenanda Gonzalez"],["Edad", 12], ["Genero", "Femenino"], ["Grupo", "Tercero"], ["Calificaciones", [6, 9, 8, 6, 8]]],

        [["Nombre", "Luis Perez"],["Edad", 12], ["Genero", "Masculino"], ["Grupo", "Primero"], ["Calificaciones", [8, 7, 7, 9, 8]]],

        [["Nombre", "Ana Espinosa"],["Edad", 14], ["Genero", "Femenino"], ["Grupo", "Segundo"], ["Calificaciones", [9, 9, 6, 8, 8]]],

        [["Nombre", "Pablo Moran"],["Edad", 11], ["Genero", "Masculino"], ["Grupo", "Segundo"], ["Calificaciones", [7, 8, 9, 9, 8]]]
        
d = []

table.each { |info| d << Hash[info]}
        


p d
       