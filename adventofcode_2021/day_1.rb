measurements = File.read("day_1.txt").split("\n")

def increased_measurements(measurements)
  i = 0
  increases = 0

  while i < measurements.size - 1
    increases += 1 if measurements[i] < measurements[i + 1]

    i += 1
  end

  increases
end

p increased_measurements(measurements)

grouped_measurements = {}
i = 0

while i <= measurements.size - 2
  grouped_measurements[i] = 0

  (0..2).each do |y|
    grouped_measurements[i] += measurements[i + y].to_i
  end

  i += 1
end

p increased_measurements(grouped_measurements)
