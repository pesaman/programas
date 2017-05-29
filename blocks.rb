
3.times do
  puts "Three times"
end

#Ejemplo con {}

numbers = [1, 5, 2, 6, 9, 20]
numbers.each {|number| puts number }

#Ejemplo con do...end

string_list = ""
chars_list_1 = ["a", "b", "c", "d", "e"]
chars_list_2 = ["z", "t", "u", "w", "q"]
chars_list_1.each do |char1|
  chars_list_2.each do |char2|
    string_list << char1 << char2
  end
end

p string_list

def hello
  puts "Hello... You're in the method"
  yield
  puts "Hello again... You're back to the method"
  yield
end

hello {puts "You are in the block"}

def numbers(list)
  list.collect do |num|
    num * 2 / 2
  end
end

#test
list = [35, 44, 78, 34, 56]
p numbers(list) == [35, 44, 78, 34, 56] 

require 'prime'

def prime(a)
  yield

end

p prime(10) {Prime.first(10) } 


puts "------------Start----------"
puts "Start time: #{Time.now}"
t1 = Time.now

#p Time.now hora del sistema
def average_grade(grades)
#  grades.inject { |sum, n| sum + n }.to_f / grades.size combina los elementos 
   puts "Average is: #{yield grades}"
end

count = 0 
average = 0 
grades = [8.2, 9.5, 10, 6.8, 7.5]

average_grade(grades) { |x| x.inject { |sum, n| sum + n }.to_f / x.size   }
t2 = Time.now
puts "End time: #{Time.now}"
puts "-------------Finish--------"
puts "Result: #{(t2-t1)*1000} seg" #t incial menos el t final * seg








