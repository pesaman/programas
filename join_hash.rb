 #Define el método join_hash que recibe tres hashes y regresa la unión de los hashes. No uses merge. Se recomienda usar iteración.

 def join_hash(x, y, z) # Definiendo el metodo, con tres parametros para hacer los tres hashes
  arr ={} #arreglo vacio que se ocupara para ingresar los datos
  x.each do |var,var2| #primer hash en el cual el parametro x toma los valores de dos nuevas variables creadas 
    arr[var] = var2 # al arreglo vacio toma los valores que se encuentran en las variables creadas  es decir el hash hace el ciclo para pasar, cuando se cumplen estas condiciones termina el primer each
  end
  y.each do |var,var2| #comienza el segundo each utilizando el segundo parametro, se declaran las mismas condiciones, solo que ahora los valores son diferentes por que este each inicia hasta que termina el primero por eso se hace la union o el join por que va each sobre each cosa que con el merge los une y devuelve un nuevo hash pero si no se especifica bien ningun bloque devuelve el segundo valor de las claves duplicadas 
    arr[var] = var2   
  end
  z.each do |var,var2| #tercer hash utilizando el tercer parametro, mismas condiciones
    arr[var] = var2
  end #final del hash
  arr # pedimos el dato que queremos del metodo en este caso es el arreglo que estaba vacio 
end

fruit = {name: "pineapple"}
weight = {weight: "1 kg"}
taste = {taste: "good"}


#test
p join_hash(fruit, weight, taste) == {:name=>"pineapple", :weight=>"1 kg", :taste=>"good"}  