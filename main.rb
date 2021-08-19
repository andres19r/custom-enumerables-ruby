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

puts "\nmy_none? vs. none?"
puts 'none?'
p(numbers.none? { |num| num < 5 })
puts 'my none?'
p(numbers.my_none? { |num| num < 5 })

puts "\nmy_count vs. count"
numbers = [1, 2, 3, 2, 4, 5, 2]
puts 'count'
puts numbers.count
puts numbers.count(2)
puts(numbers.count { |num| num % 2 == 0 })
puts 'my_count'
puts numbers.my_count
puts numbers.my_count(2)
puts(numbers.my_count { |num| num % 2 == 0 })

puts "\nmy_map vs. map"
puts 'map'
numbers = [1, 2, 3, 4]
p(numbers.map { |i| i * i })
puts 'my_map'
p(numbers.my_map { |i| i * i })

puts "\nmy_inject vs. inject"
puts 'inject'
puts(numbers.inject { |sum, number| sum + number })
puts(numbers.inject(99) { |sum, number| sum + number })
puts 'my_inject'
puts(numbers.my_inject { |sum, number| sum + number })
puts(numbers.my_inject(99) { |sum, number| sum + number })
