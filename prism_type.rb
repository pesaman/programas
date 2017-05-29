def prism_type(num_1, num_2, num_3)
  if num_1 == num_2 && num_2 == num_3#si en la condición los tres lados son iguales manda imprimir "cubo"
    "cubo"
  elsif (num_1 == num_2 && num_2 != num_3 ) || (num_1 == num_3 && num_2 != num_3)#si en la condición son dos lados iguales manda imprimir "prisma rectangular"
    "prisma rectangular"
  else
    "cuboide" #si todas son diferentes, manda imprimir "cuboide"
  end
end
p prism_type(5, 5, 5) == "cubo"
p prism_type(5, 5, 4) == "prisma rectangular"
p prism_type(5, 4, 3) == "cuboide"
p prism_type(10, 8, 2) == "cuboide"    













