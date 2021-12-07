diagnostic_report_numbers = File.read("day_3.txt").split("\n")
gamma_rate_binary = ""
epsilon_rate_binary = ""

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

diagnostic_report_numbers.first.size.times do |i|
  common_value = diagnostic_report_numbers.map { |binary_number| binary_number[i] }.tally

  gamma_rate_binary += common_value["0"] > common_value["1"] ? "0" : "1"
  epsilon_rate_binary += common_value["0"] > common_value["1"] ? "1" : "0"
end

gamma_rate_decimal = gamma_rate_binary.to_i(2)
epsilon_decimal = epsilon_rate_binary.to_i(2)

power_consumption = gamma_rate_decimal * epsilon_decimal

p "power_consumption: #{power_consumption}"
