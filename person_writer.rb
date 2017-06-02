require 'Faker'
require 'CSV'

class Person
  attr_accessor :first_name, :last_name, :email, :phone, :created_at

  def initialize(firs_name, last_name, email, phone, created_at)
    @first_name = firs_name
    @last_name = last_name
    @email = email
    @phone = phone
    @created_at = created_at
  end

end
#Usar el faker para llenar las variables al azar
def create_person
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    email = Faker::Internet.email
    phone = Faker::PhoneNumber.phone_number
    created_at = Time.now
    #crear objetos personas con valores aleatorios del faker
    Person.new(first_name, last_name, email, phone, created_at)
end

 def number_persons(number)
  #crear array para meter personas
    array_persons = []
    for i in 1..number
      #meter personas el numero de veces que el usuario quiera
      array_persons << create_person
    end
    array_persons
  end




#p people[0].first_name

class PersonWriter
  def initialize(file, array)
    @file = file
    @array = array
  end
  #crear metodo para guardar los valores
  def create_csv
    
    #metodo csv que recorrera donde quieras debe tener el valor wb
    CSV.open(@file, "w") do |csv|
      #iterar dentro del array para meter cada objeto persona por separado

      @array.each do |person|
        #Debe entrar el archivo en forma de array
        #para que pueda meter toda la informacion se debe separa con comas
         csv << [person.first_name, person.last_name, person.email, person.phone, person.created_at] #+ person.last_name 
      end
    end
  end
 end


 class PersonParser
   def initialize(file)
    @file = file
   end
   #crear metodo para guardar los valores
     def people
      n_array = []
    CSV.foreach(@file, "r") do |row|
      n_array << [Person.new(row[0], row[1], row[2], row[3], row[4])]
    end
  n_array
  end
end


#DRIVER CODE
 people = number_persons(15)
 people[0] = Person.new('Juan', 'Castillo', 'ing.pundt@gmail.com', '9222271374', '1991-06-06')

person_writer = PersonWriter.new("people.csv", people)
person_writer.create_csv

parser = PersonParser.new('people.csv')
people = parser.people
p people[0..9]

parser = PersonParser.new('people.csv')
people = parser.people




