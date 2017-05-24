def median(array)
  elements = array.length

  if elements.odd?
    array[(elements - 1)/2]
  else
    (array[elements/2] + array[elements/2 - 1]) / 2.to_f
  end  
  
end


# Pruebas
 p median([4, 5, 6]) == 5
 p median([-3, 0, 3]) == 0
 p median([2, 3, 4, 5]) == 3.5
 p median([1, 8, 10]) == 8