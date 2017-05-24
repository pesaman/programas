def fizzbuzz (var, var2)

  x = []

  var.upto(var2).each do |i|
    if  (i % 3 == 0) && (i % 5 == 0)
      x << "FizzBuzz"
    elsif i % 3 == 0
      x << "Fizz"
    elsif i % 5 == 0
      x << "Buzz"
    else
      x << i
    end
  end
  x
end

# Pruebas

p fizzbuzz(3, 5) == ["Fizz", 4, "Buzz"]
p fizzbuzz(10, 15) == ["Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]