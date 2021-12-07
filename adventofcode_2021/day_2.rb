puzzle_output = File.read("day_2.txt")
commands = puzzle_output.split("\n").map { |i| i.split(" ") }

# commands = [
#   ["forward", 5],
#   ["down", 5],
#   ["forward", 8],
#   ["up", 3],
#   ["down", 8],
#   ["forward", 2],
# ]

horizontal_position = 0
depth = 0

commands.each do |position, value|
  case position
  when "forward"
    horizontal_position += value.to_i
  when "up"
    depth -= value.to_i
  when "down"
    depth += value.to_i
  end
end

p "horizontal_position: #{horizontal_position}"
p "depth: #{depth}"
p "result: #{horizontal_position * depth}"
