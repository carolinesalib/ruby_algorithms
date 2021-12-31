require_relative "selection_sort"
require_relative "insertion_sort"
require_relative "quick_sort"
require "benchmark"

numbers = (1...4_096).to_a.shuffle
numbers_for_selection_sort = numbers.clone
numbers_for_insertion_sort = numbers.clone
numbers_for_merge_sort = numbers.clone
numbers_for_quick_sort = numbers.clone
ruby_sort = numbers.clone

Benchmark.bm do |x|
  x.report { selection_sort(numbers_for_selection_sort) }
  x.report { insertion_sort(numbers_for_insertion_sort) }
  x.report { insertion_sort(numbers_for_merge_sort) }
  x.report { quick_sort(numbers_for_quick_sort) }
  x.report { ruby_sort.sort }
end
