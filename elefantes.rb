puts "Introduce el numero de elefantes"
x= gets.chomp.to_i #recibe el valor asignado por el usuario y lo guarda en x
if x==1
  p "#{x} elefante se columpiaban sobre la tela de una araña, ay se rompio :(" 
  elsif x>0 #a partir del segundo son elefantes y con el ultimo se rompe
    p "1 elefante se columpiaba sobre la tela de una araña, como veía que resistía fueron a llamar a otro elefante."
    (2..x-1).each do |i|
    p "#{i} elefantes se columpiaban sobre la tela de una araña, como veía que resistía fueron a llamar a otro elefante."
    #Si el usuario introduce cero o números negativos
  end  
  p "#{x} elefantes se columpiaban sobre la tela de una araña, ay se rompio :'("
else
  p "vamos los elefantes quieren jugar :)"
end

#puts imprime con un salto de linea y print imprime el contenido de camenera recorrida 