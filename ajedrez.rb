require "Matrix"


ajedrez = [
  ["TB","CB","AB","KB","QB","AB","CB","TB"],
  ["PB","PB","PB","PB","PB","PB","PB","PB"],
  ["0","0","0","0","0","0","0","0"],
  ["0","0","0","0","0","0","0","0"],
  ["0","0","0","0","0","0","0","0"],
  ["0","0","0","0","0","0","0","0"],
  ["PA","PA","PA","PA","PA","PA","PA","PA"],
  ["TA","CA","AA","KA","QA","AA","CA","TA"]
]

#METODO QUE IMPRIME UN TABLERO DE AJEDREZ
def imprime_tablero(ajedrez)
  for i in 0...65
    print "-"
  end
  puts
  print "|"
#PRIMER RENGLON
  for i in 0...8
    print ajedrez[0][i] + "\t"
  end
  print "|"
  puts
  print "|"
#SEGUNDO RENGLON
  for i in 0...8
    print ajedrez[1][i] + "\t"
  end
  print "|"
  puts
  print "|"
  for i in 0...8
    print ajedrez[2][i] + "\t"
  end
  print "|"
  puts
  print "|"
  for i in 0...8
    print ajedrez[3][i] + "\t"
  end
  print "|"
  puts
  print "|"
  for i in 0...8
    print ajedrez[4][i] + "\t"
  end
  print "|"
  puts
  print "|"
  for i in 0...8
    print ajedrez[5][i] + "\t"
  end
  print "|"
  puts
  print "|"
  for i in 0...8
    print ajedrez[6][i] + "\t"
  end
  print "|"
  puts
  print "|"
  for i in 0...8
    print ajedrez[7][i] + "\t"
  end
  print "|"
  puts
  for i in 0...65
    print "-"
  end
  puts
end

def tablero_ajedrez
  tablero = []
  renglon_blancos = []
  renglon_PA = []
  renglon_0 = []
  renglon_PN = []
  renglon_negros = []
#METEMOS LOS CEROS
  for i in 0...8
    renglon_0 << "0"
  end
#METEMOS LOS PEONES BLANCOS Y NEGROS
  for i in 0...8
    renglon_PA << "PA"
    renglon_PN << "PB"
  end
  renglon_negros << "TN" << "CN" << "AN" << "KN" << "QN"  << "AN" << "CN" << "TN"
  renglon_blancos << "TB" << "CB" << "AB" << "KB" << "QB"  << "AB" << "CB" << "TB"
  tablero << renglon_negros << renglon_PN << renglon_0 << renglon_0 << renglon_0 << renglon_0 << renglon_PA << renglon_blancos
  tablero
end

def tabla_datos
  tabla = []
  titulos = ["Nombre", "Edad", "Genero", "Grupo", "Calificaciones"]
  fila_1 = ["Rodrigo Garcia", 13, "Masculino", "Primero", [9, 9, 7, 6, 8]]
  fila_2 = ["Fernanda Gonzalez", 12, "Femenino", "Tercero", [6, 9, 8, 6, 8]]
  fila_3 = ["Luis Perez", 13, "Masculino", "Primero", [8, 7, 7, 9, 8]]
  fila_4 = ["Ana Espinosa", 14, "Femenino", "Segundo", [9, 9, 6, 8, 8]]
  fila_5 = ["Pablo Moran", 11, "Masculino", "Segundo", [7, 8, 9, 9, 8]]
  tabla << titulos
  tabla << fila_1
  tabla << fila_2
  tabla << fila_3
  tabla << fila_4
  tabla << fila_5
  tabla
end

#print tabla_datos
# tablero = Matrix.build(2, 2) {|row, col| row = col = "0"}
# Matrix.columns(tablero.to_a << [2,3])
# puts tablero
imprime_tablero(tablero_ajedrez)
table = tabla_datos
p table[0][4]  == "Calificaciones"
p table[2][1]  == 12
p table[2][2]  == "Femenino"
p table[3][3]  == "Primero"
p table[3][4]  == [8, 7, 7, 9, 8]
p table[4][4][2]  == 6