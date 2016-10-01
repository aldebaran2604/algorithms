require "Matrix"

matriz1 = [[2,0,1],[3,0,0],[5,1,1]]
matriz2 = [[1,0,1],[1,2,1],[1,1,0]]

filas1 = matriz1.length
columnas1 = matriz1[0].length

filas2 = matriz2.length
columnas2 = matriz2[0].length

#matrizMultiplicacion = Array.new(filas1, Array.new(columnas2, 0.0))
matrizMultiplicacion = []

if columnas1 != filas2
  puts "Las matrices no se pueden multiplicar"
else
  for x in 0..filas1-1
    for y in 0..columnas2-1
      matrizMultiplicacion[x] ||= []
      matrizMultiplicacion[x][y] = 0
      for z in 0..columnas1-1
        matrizMultiplicacion[x][y] += matriz1[x][z]*matriz2[z][y]
      end
      #matrizMultiplicacion[x][y] = multiplicacion
      #puts matrizMultiplicacion[x][y]
    end
  end
end

puts matrizMultiplicacion.to_s

puts Matrix[[2,0,1],[3,0,0],[5,1,1]] * Matrix[[1,0,1],[1,2,1],[1,1,0]]