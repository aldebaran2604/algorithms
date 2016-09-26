def insercion(array)
  for i in 1..array.length-1
    temp = array[i]
    j = i-1
    while (j>=0) && (temp<array[j])
      array[j+1] = array[j]
      j-=1
    end
    array[j+1] = temp
  end
  array
end

arreglo = [10,4,26,0,1,-12]
puts arreglo.to_s
arreglo = insercion(arreglo)
puts arreglo.to_s