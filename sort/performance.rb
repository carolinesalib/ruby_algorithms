require_relative "selection_sort"
require_relative "insertion_sort"
require "benchmark"

numbers = (1...16_884).to_a.shuffle
numbers_for_selection_sort = numbers.clone
numbers_for_insertion_sort = numbers.clone

Benchmark.bm do |x|
  x.report { selection_sort(numbers_for_selection_sort) }
  x.report { insertion_sort(numbers_for_insertion_sort) }
end
