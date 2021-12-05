# TODO: sort array of numbers
numbers = [9, 8, 6, 7, 4, 3, 4, 1, 2, 5]

def sort(numbers)
  pivot = numbers.size
  smaller_number_index = -1
  new_numbers = []

  numbers.each_with_index do |n, i|
    next unless n[i] < pivot

    new_numbers[smaller_number_index] = n[i]
    new_numbers[i] =
      smaller_number_index = i
  end
end

pp sort(numbers)

# TODO: sort by multiple objects
