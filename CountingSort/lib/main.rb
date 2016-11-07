def counting_sort(list, max)
  counts = Array.new(max+1, 0)
  list.each do |i| 
    counts[i] += 1
  end
  sorted = []
  counts.each_index do |index| 
    counts[index].times { sorted << index } 
  end
  sorted
end
 
list = [1, 3, 6, 7, 8, 11, 43, 2, 4, 5]
p list
p counting_sort(list, 43)