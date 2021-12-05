array = [
  ["Fernando", 320_000],
  ["Alfredo", 600_000],
  ["Flávio", 500_000],
  ["Marcela", 220_000]
]

smaller_number_index = -1
larger_number_index = -1

array.each_with_index do |item, i|
  smaller_number_index = i if array[smaller_number_index][1] < item[1]

  larger_number_index = i if array[larger_number_index][1] > item[1]
end

p "Smaller Salary is: #{array[smaller_number_index][0]} R$ #{array[smaller_number_index[1]]}"
p "Larger Salary is: #{array[larger_number_index][0]} R$ #{array[larger_number_index[1]]}"
