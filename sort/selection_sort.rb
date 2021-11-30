# numbers = [10, 8, 9, 2, 3, 4, 4, 5, 1, 6, 7]

def smaller_number_index(start_index, numbers)
  i = start_index
  smaller_index = i

  while i < numbers.size
    smaller_index = i if numbers[i] < numbers[smaller_index]
    i += 1
  end

  smaller_index
end

def selection_sort(array)
  array.each_with_index do |current_number, current_index|
    smaller_number_index = smaller_number_index(current_index, array)

    array[current_index] = array[smaller_number_index]
    array[smaller_number_index] = current_number
  end
end

# pp selection_sort(numbers)
