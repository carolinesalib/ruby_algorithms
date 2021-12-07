diagnostic_report_numbers = File.read("day_3.txt").split("\n")
oxygen_generator_rating = ""
co2_scrubber_rating = ""

# diagnostic_report_numbers = [
#   "00100",
#   "11110",
#   "10110",
#   "10111",
#   "10101",
#   "01111",
#   "00111",
#   "11100",
#   "10000",
#   "11001",
#   "00010",
#   "01010",
# ]

diagnostic_report_numbers_filtered = diagnostic_report_numbers
diagnostic_report_numbers.first.size.times do |i|
  common_value = diagnostic_report_numbers_filtered.map { |binary_number| binary_number[i] }.tally

  oxygen_generator_rating += common_value["0"] > common_value["1"] ? "0" : "1"
  diagnostic_report_numbers_filtered = diagnostic_report_numbers_filtered.filter { |a| a.start_with?(oxygen_generator_rating) }
  # p diagnostic_report_numbers_filtered

  if diagnostic_report_numbers_filtered.size == 1
    oxygen_generator_rating = diagnostic_report_numbers_filtered.first
    break
  end
end

diagnostic_report_numbers_filtered = diagnostic_report_numbers
diagnostic_report_numbers.first.size.times do |i|
  common_value = diagnostic_report_numbers_filtered.map { |binary_number| binary_number[i] }.tally

  co2_scrubber_rating += common_value["1"] < common_value["0"] ? "1" : "0"
  diagnostic_report_numbers_filtered = diagnostic_report_numbers_filtered.filter { |a| a.start_with?(co2_scrubber_rating) }
  # p diagnostic_report_numbers_filtered

  if diagnostic_report_numbers_filtered.size == 1
    co2_scrubber_rating = diagnostic_report_numbers_filtered.first
    break
  end
end

life_support_rating = oxygen_generator_rating.to_i(2) * co2_scrubber_rating.to_i(2)

p "oxygen_generator_rating: #{oxygen_generator_rating}"
p "co2_scrubber_rating: #{co2_scrubber_rating}"
p "life_support_rating: #{life_support_rating}"
