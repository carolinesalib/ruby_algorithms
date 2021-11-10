array = [
  ["Fernando", 320000],
  ["Alfredo", 600000],
  ["Flávio", 500000],
  ["Marcela", 220000]
]

smaller_number_index = -1
larger_number_index = -1

array.each_with_index do |item, i|
  if array[smaller_number_index][1] < item[1]
    smaller_number_index = i
  end

  if array[larger_number_index][1] > item[1]
    larger_number_index = i
  end
end

p "Smaller Salary is: #{array[smaller_number_index][0]} R$ #{array[smaller_number_index[1]]}"
p "Larger Salary is: #{array[larger_number_index][0]} R$ #{array[larger_number_index[1]]}"
