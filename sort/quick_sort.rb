array = [9, 8, 6, 7, 4, 3, 10, 1, 2, 5]

def switch(array, index1, index2)
  value1 = array[index1]
  value2 = array[index2]

  array[index1] = value2
  array[index2] = value1

  array
end

def part(array, start_index, end_index)
  pivot_index = end_index
  smaller_numbers = start_index

  (start_index...end_index).each do |i|
    if array[i] <= array[pivot_index]
      switch(array, i, smaller_numbers)
      smaller_numbers += 1
    end
  end

  switch(array, pivot_index, smaller_numbers)
  smaller_numbers
end

def sort(array, start_index, end_index)
  return unless start_index < end_index

  new_pivot = part(array, start_index, end_index)
  sort(array, start_index, new_pivot - 1)
  sort(array, new_pivot + 1, end_index)
end

def quick_sort(array)
  sort(array, 0, array.length - 1)
end

quick_sort(array)
pp array
