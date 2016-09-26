def burbuja(array)
  limit = (array.length-1)
  while limit > 0
    for i in 0..limit-1
      if array[i] > array[i+1]
        array[i],array[i+1] = array[i+1],array[i]
      end
    end
    limit -= 1
  end
  array
end

arreglo = [10,5,4,30,3,2,1]
puts arreglo.to_s
arreglo = burbuja(arreglo)
puts arreglo.to_s