numbers = [10, 8, 9, 2, 3, 4, 4, 5, 1, 6, 7]

def insertion_sort(array)
  (1...array.size).each do |index|
    analyse_index = index

    p "Current number is #{array[analyse_index - 1]} and next is #{array[analyse_index]}"
    while analyse_index.positive? && array[analyse_index] < array[analyse_index - 1]
      p "Replacing #{array[analyse_index]} with #{array[analyse_index - 1]}"
      smaller_number = array[analyse_index]
      bigger_number = array[analyse_index - 1]
      array[analyse_index] = bigger_number
      array[analyse_index - 1] = smaller_number

      analyse_index -= 1
    end
  end

  array
end

pp insertion_sort(numbers)
