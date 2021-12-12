array_1 = [1, 2, 4, 6]
array_2 = [3, 5, 7, 8, 9, 10, 11]

def merge_sort(array_1, array_2)
  merged_array = []
  current_array_1 = 0
  current_array_2 = 0

  while current_array_1 < array_1.size && current_array_2 < array_2.size
    if array_1[current_array_1] < array_2[current_array_2]
      merged_array << array_1[current_array_1]
      current_array_1 += 1
    else
      merged_array << array_2[current_array_2]
      current_array_2 += 1
    end
  end

  while current_array_1 < array_1.size
    merged_array << array_1[current_array_1]
    current_array_1 += 1
  end

  while current_array_2 < array_2.size
    merged_array << array_2[current_array_2]
    current_array_2 += 1
  end

  merged_array
end

p merge_sort(array_1, array_2)
