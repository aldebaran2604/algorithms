inf = Float::INFINITY

matriz = [
  [0,inf,inf,inf,1,inf,inf,10,inf,inf],
  [inf,0,2,inf,inf,inf,inf,inf,inf,inf],
  [inf,inf,0,inf,inf,inf,inf,inf,inf,inf],
  [4,inf,inf,0,3,inf,inf,1,inf,inf],
  [inf,inf,inf,inf,0,inf,inf,inf,inf,inf],
  [inf,1,3,inf,inf,0,7,inf,1,inf],
  [inf,inf,inf,inf,inf,0,inf,inf,inf,inf],
  [inf,inf,inf,inf,5,inf,inf,0,9,inf],
  [inf,inf,inf,inf,inf,inf,inf,inf,0,2],
  [inf,inf,inf,inf,inf,inf,1,inf,inf,0]
]



for i in 0..9
  for j in 0..9
    for k in 0..9
      if matriz[j][k] > matriz[j][i] + matriz[i][k]
        matriz[j][k] = matriz[j][i] + matriz[i][k]
      end
    end
  end
end

for m in 0..9
  puts matriz[m].to_s
end