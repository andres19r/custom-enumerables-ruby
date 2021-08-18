require_relative 'enumerable'
include Enumerable

puts 'my_each vs. each'
numbers = [1, 2, 3, 4, 5]
puts 'My Each'
numbers.my_each { |item| puts item }
puts 'Each'
numbers.each { |item| puts item }

puts 'my_each_with_index vs. each_with_index'
numbers = [5, 4, 3, 2, 1]
puts 'Each with index'
numbers.each_with_index { |val, index| puts "Value: #{val}, index: #{index}" }
puts 'My Each with index'
numbers.my_each_with_index { |val, index| puts "Value: #{val}, index: #{index}" }
