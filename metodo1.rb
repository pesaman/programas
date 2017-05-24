#Definiendo un Hash
#nuevo_hash = {}
#catalogo_tienda = {"camisa" => 5, "playera" => 3, "short" => 7, "pantalon" => 2 }

#Precio de la Camisa
#p catalogo_tienda["camisa"]

#--------------------------
# Ejercicio - Hashes

#new_hash y un Hash vacío.
new_hash = Hash.new

#variable canasta_de_frutas con un Hash con 3 nombres de frutas con una cantidad.
canasta_de_frutas = {"lima"=>6, "limon"=>9, "uva"=>4}

#add una fruta más.
canasta_de_frutas["sandia"] = 1

#fruta selecionada y arreglo con el anexo de la nueva fruta
p canasta_de_frutas
p fruta_seleccionada = (canasta_de_frutas["uva"])
