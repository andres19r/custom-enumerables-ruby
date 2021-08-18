require_relative 'enumerable'
include Enumerable

puts 'my_each vs. each'
numbers = [1, 2, 3, 4, 5]
puts 'My Each'
numbers.my_each { |item| puts item }
puts 'Each'
numbers.each { |item| puts item }

puts "\nmy_each_with_index vs. each_with_index"
numbers = [5, 4, 3, 2, 1]
puts 'Each with index'
numbers.each_with_index { |val, index| puts "Value: #{val}, index: #{index}" }
puts 'My Each with index'
numbers.my_each_with_index { |val, index| puts "Value: #{val}, index: #{index}" }

puts "\nmy_select vs. select"
numbers = [1, 2, 3, 4, 5, 6]
puts 'Select'
numb_even = numbers.select { |num| num % 2 == 0 }
p numb_even
puts 'My Select'
numb_even = numbers.my_select { |num| num % 2 == 0 }
p numb_even

puts "\nmy_all? vs. all?"
numbers = [1, 2, 3, 4, 5]
puts 'All?'
p(numbers.all? { |num| num < 3 })
puts 'My All?'
p(numbers.my_all? { |num| num < 3 })

puts "\nmy_any? vs. any?"
puts 'Any?'
p(numbers.any? { |num| num == 3 })
puts 'My Any?'
p(numbers.my_any? { |num| num == 3 })
