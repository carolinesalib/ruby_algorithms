array = [9, 8, 6, 7, 4, 3, 10, 1, 2, 5]

def switch(array, index1, index2)
  value1 = array[index1]
  value2 = array[index2]

  array[index1] = value2
  array[index2] = value1

  array
end

def part(array, pivot)
  smaller_numbers = 0

  (0...pivot).each do |i|
    if array[i] < array[pivot]
      switch(array, i, smaller_numbers)
      smaller_numbers += 1
    end
  end

  switch(array, pivot, smaller_numbers)
  smaller_numbers
end

def sort(array, start_index, end_index)
  elements = end_index - start_index
  if elements > 1
    new_pivot = part(array, end_index - 1)
    sort(array, start_index, new_pivot)
    sort(array, new_pivot + 1, end_index)
  end
end

def quick_sort(array)
  sort(array, 0, array.length)
end

quick_sort(array)
pp array