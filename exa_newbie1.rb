# Clases
# Crear una clase CreditCard que tenga como datos la información que aparece en la tabla de ejemplo. Posteriormente crea un arreglo con cinco objetos de tarjetas de crédito e imprime la información de cada tarjeta en una tabla. Utiliza las pruebas y la tabla que se presenta de ejemplo.


# Clase CreditCard
class CreditCard
  attr_reader :name, :number, :expiration, :cvc
  attr_accessor :status


  def initialize (name, number, expiration, cvc, status)
    @name=name
    @number=number
    @expiration=expiration
    @cvc=cvc
    @status=status
  end

  def to_s
    return "#{name}","#{number}","#{expiration}","#{cvc}", "#{status}"
end 
end


 #Cinco instancias de CreditCard
#Array con cinco objetos de tarjetas de crédito
cards=[]
#cards<<CreditCard.new('|Nombre    |', '|Number    |', '|Expiration|', '|CVC |','|Status                 |')
cards<<CreditCard.new('|Amex      |', '|2345673444|', '|12/15     |', '|2345|', [234, 567, 456, 567, 344])
cards<<CreditCard.new('|ScotiaBank|', '|2345673744|', '|12/16     |', '|2845|', [234, 345, 456, 567, 344])
cards<<CreditCard.new('|Bancomer  |', '|2345673444|', '|12/15     |', '|2645|', [234, 345, 456, 567, 344])
cards<<CreditCard.new('|Serfin    |', '|2345473454|', '|12/20     |', '|1345|', [234, 345, 456, 567, 344])
cards<<CreditCard.new('|BanCoppel |', '|2345373464|', '|12/18     |', '|2445|', [567, 345, 456, 567, 344])

#tests 

cards.each do |card|
   puts "#{card.name} responds to:"
   puts "\tName: #{card.respond_to?(:name) == true}"
   puts "\tNumber: #{card.respond_to?(:number) == true}"
   puts "\tExpiration: #{card.respond_to?(:expiration) == true}"
   puts "\tcvc: #{card.respond_to?(:cvc) == true}"
   puts "\tGet status: #{card.respond_to?(:status) == true}"
   puts "\tSet status: #{card.respond_to?(:status=) == true}"
   puts "\n\n"
end

#método para mostrar datos de tarjetas

cards_array=[]
cards.each do |card|
  cards_array<<card.to_s
end

cards_array.each do |x|
  x.each do |y|
    print y.ljust(15)
  end
  puts
end
puts

# # Herencia
# # Crea las clases Athlete, Runner, Swimmer y Cyclist, trata de relacionarlas a través de herencia. Cada atleta podrá incrementar el total de la distancia recorrida y el tiempo total de ejercicio. Al final cada tipo de atleta deberá mostrar la distancia total recorrida, el tiempo total y la velocidad obtenida. Es importante considerar los casos cuando la distancia recorrida es igual a 0 y mayor que 0. Todas las pruebas deberán pasar.


#Athlete class
class Athlete
   attr_accessor :total_time, :total_distance, :speed_record
  @@total_time=0
  @@total_distance=0

  #método para validar tiempo (que sea diferente de cero)
  def valid_time(time)
    time!=0
  end

  #método para hacer ejercicio. 
 

  #método para obtener velocidad del atleta
  def speed(distance, time)

    if valid_time(time)
      @speed_record=distance.to_f/time
      @speed_record=@speed_record.round(2)
    else
      @speed_record = 0
    end

  end

end

#Runner class
class Runner < Athlete
  def initialize(distance=0, time=0)
    @distance=distance
    @time=time
    #el tiempo y distancia con la que inicia tambien se aumenta al ageneral, que es la del Atleta.
    @@total_distance+=distance
    @@total_time+=time
  end

   def new_workout(distance, time)
    @distance+=distance
    @time+=time
    @@total_distance+=distance
    @@total_time+=time
  end

  def run
    "Ran #{@distance} meters, time: #{@time} seconds, speed: #{speed(@distance, @time)} m/s"
  end
end

#Swimmer class
class Swimmer < Athlete
  def initialize(distance=0, time=0)
    @distance=distance
    @time=time
    @@total_distance+=distance
    @@total_time+=time
  end

  def new_workout(distance, time)
    @distance+=distance
    @time+=time
    @@total_distance+=distance
    @@total_time+=time
  end

    def swim
   "Swam #{@distance} meters, time: #{@time} seconds, speed: #{speed(@distance, @time)} m/s"
  end

end

#Cyclist class
class Cyclist < Athlete
  def initialize(distance=0, time=0)
    @distance=distance
    @time=time
    @@total_distance+=distance
    @@total_time+=time
  end

  def new_workout(distance, time)
    @distance+=distance
    @time+=time
    @@total_distance+=distance
    @@total_time+=time
  end

  def ride_bike
    "Rode Bike #{@distance} meters, time: #{@time} seconds, speed: #{speed(@distance, @time)} m/s"
  end

end

#tests

#instancias de atletas con distancia en metros
runner = Runner.new()
swimmer = Swimmer.new(50, 10)
cyclist = Cyclist.new(70, 27)

athletes = [runner, swimmer, cyclist]

athletes.each do |athlete|
  #¿qué tipo de atleta es?
  puts "#{athlete.class} responds to:"
  puts "\tAthlete speed: #{athlete.respond_to?(:speed) == true}"
  puts "\tGet Athlete time: #{athlete.respond_to?(:total_time) == true}"
  puts "\tSet Athlete time: #{athlete.respond_to?(:total_time=) == true}"
  puts "\tSpeed record: #{athlete.respond_to?(:speed_record) == true}"
  puts "\tGet Distance: #{athlete.respond_to?(:total_distance) == true}"
  puts "\tSet Distance: #{athlete.respond_to?(:total_distance=) == true}"
  puts "\trun method: #{athlete.respond_to?(:run) == true}" if athlete == runner
  puts "\tswim method: #{athlete.respond_to?(:swim) == true}" if athlete == swimmer
  puts "\tride_bike method: #{athlete.respond_to?(:ride_bike) == true}" if athlete == cyclist
  puts "\n\n"
end

#test for runner

#test para runner con distancia = 0
p runner.run == "Ran 0 meters, time: 0 seconds, speed: 0 m/s"
#test para runner al hacer ejercicio, incrementa distancia = 20 metros y tiempo = 7 segundos
runner.new_workout(20, 7) 
#test para runner con distancia = 20 metros y tiempo = 7 segundos
p runner.run == "Ran 20 meters, time: 7 seconds, speed: 2.86 m/s"

#test para swimmer con distancia = 50
p swimmer.swim == "Swam 50 meters, time: 10 seconds, speed: 5.0 m/s"


#RaceCar class
$distance = 100
#RaceCar class
class RaceCar
  attr_accessor :nameCar, :velocity
  def initialize(nameCar, velocity)
    @nameCar = nameCar
    @velocity = velocity
  end

  #método para obtener velocidad promedio
  #...
  def average_speed
    @velocity.to_f / $distance
  end

  #método que muestra nivel de cada race car
  #...
  def level_car
    level = ""
    if @velocity <= 100
      level = "Principiante"
    elsif @velocity <= 200
      level = "Medio"
    elsif @velocity <= 300
      level = "Medio"
    elsif @velocity <= 400
      level = "Normal"
    elsif @velocity <= 500
      level = "Normal"
    else
      level = "Normal"
    end            
    level    
  end

end

#Team class
class Team 
  attr_accessor :arrayCars
  def initialize(arrayCars)
    @arrayCars = arrayCars
    #addCar(@arrayCars)
  end

  #método para agregar nuevo race car
  #...
  def addCar(car, array)
    arrayCars = []
    array.each do |raceCar|
      arrayCars << raceCar
    end
    arrayCars
  end

  #método para calcular promedio de velocidad del equipo
  #...  
  def average_speed_of_team#(arrayCars)
    vel = 0
    @arrayCars.each do |car|
      vel += car.velocity
    end
    "The average speed is: #{vel / $distance.to_f} m/s"
  end

end

#método para buscar race car
#...
def search(car, arrayCars)
  #p arrayCars.arrayCars
  if (arrayCars.arrayCars).find{ |i| i.nameCar == car } 
    "#{car} is a racer"
  else
    "#{car} isn't a racer"
  end
end


#método para generar la tabla
#...
def show_cars(arrayCars)
  puts "|\tName\t|\tNivel\t|"
  puts "-" * 33
  arrayCars.arrayCars.each do |car|
    if (car.nameCar).length <= 6
      puts"|\t#{car.nameCar}\t|#{car.level_car}\t|"
    else
      puts"|    #{car.nameCar}\t|#{car.level_car}\t|"
    end
  end
end

#método para mostrar nombre y nivel del race car
#...


#instancias de RaceCar
#...
car1 = RaceCar.new("Force", 400)
car2 = RaceCar.new("Power", 100)
car3 = RaceCar.new("Passwater", 500)
car4 = RaceCar.new("Banjo", 600)
car5 = RaceCar.new("Duck", 800)
car6 = RaceCar.new("AldoCar", 1000)


#tests

p "car1: #{car1.average_speed} m/s"
#ej. car1: 9.5 m/s
p "car2: #{car2.average_speed} m/s"
#ej. car2: 12.01 m/s
p "car3: #{car3.average_speed} m/s"
#ej. car3: 10.65 m/s
p "car4: #{car4.average_speed} m/s"
#ej. car4: 11.0 m/s
p "car5: #{car5.average_speed} m/s"
#ej. car5: 10.15 m/s
p "car6: #{car6.average_speed} m/s"
#ej. car6: 15.51 m/s

#create a team of cars 
team1 = [car1, car2, car3, car4, car5]
team_one = Team.new(team1)

#test para buscar race car en equipo team_one
p search("Power", team_one) == "Power is a racer"

#calculate average speed of team
p team_one.average_speed_of_team
show_cars(team_one)
#ej. 10.66 


#Playlist
class Playlist
  def initialize (name, songs)
    @name = name
    @songs = songs
  end
  def name
    @name
  end
  def songs
    @songs
  end
  def number_of_songs
    @songs.length
  end

  def add_song(new_song)
    @songs.unshift(new_song)
  end

  def song
    @song = songs.first
  end

  def next_song
    songs.rotate!
    songs.first
  end        

end

list_1 = Playlist.new("La bikina", ["Ruby", "Reptilia"])#verificanod acceso al nombre de la playlist
p list_1.name
p list_1.number_of_songs
list_1.add_song("Maps")#agregando una cancion
p list_1.songs
p list_1.number_of_songs#numero de cancines
p list_1.song
p list_1.next_song
p list_1.next_song
p list_1.next_song