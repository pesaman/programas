def mode(array)

  hash = Hash.new(0)
  array.each {|num| hash[num] += 1}

  max_value = hash.each_value.max

  new_hash = hash.reject {|key, value| value < max_value }

  answer = []
  new_hash.each_key {|k| answer << k}
  answer
  
end

#Pruebas
p mode([1, 2, 2, 3]) == [2]
p mode([1, 2, 2, 3, 3, 4]) == [2, 3]
p mode([1, 2, 3]) == [1, 2, 3]
p mode([0, 1, 2, 3, 4, 0]) == [0]