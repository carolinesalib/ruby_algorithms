def merge(array, start_index, middle_index, end_index)
  sorted_array = []
  current_array1 = start_index
  current_array2 = middle_index

  while current_array1 < middle_index && current_array2 < end_index
    value1 = array[current_array1]
    value2 = array[current_array2]

    if value1 < value2
      sorted_array << value1
      current_array1 += 1
    else
      sorted_array << value2
      current_array2 += 1
    end
  end

  while current_array1 < middle_index
    sorted_array << array[current_array1]
    current_array1 += 1
  end

  while current_array2 < end_index
    sorted_array << array[current_array2]
    current_array2 += 1
  end

  sorted_array.size.times do |i|
    array[i + start_index] = sorted_array[i]
  end

  array
end

# array = [1, 4, 6, 8, 9] + [2, 3, 5, 7, 10, 11]
# array = [1, 4, 2, 8, 5, 9, 10, 3, 7, 6, 11]

# p merge(array, 0, 1, 2)
# p merge(array, 2, 3, 4)
# p merge(array, 0, 2, 4)

# p merge(array, 4, 5, 6)
# p merge(array, 6, 7, 8)
# p merge(array, 4, 6, 8)

# p merge(array, 0, 4, 8)
# p array == [1, 2, 3, 4, 5, 8, 9, 10, 7, 6, 11] ? "True" : "False"

def sort(array, start_index, end_index)
  size_array = end_index - start_index

  if size_array > 1
    middle_index = (start_index + end_index) / 2

    sort(array, start_index, middle_index)
    sort(array, middle_index, end_index)
    merge(array, start_index, middle_index, end_index)
  end
end

def merge_sort(array)
  sort(array, 0, array.size)
end

array = [1, 4, 2, 8, 5, 9, 10, 3, 7, 6, 11]
merge_sort(array)
p array
