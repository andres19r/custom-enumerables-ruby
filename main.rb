require_relative 'enumerable'
include Enumerable

puts 'my_each vs. each'
numbers = [1, 2, 3, 4, 5]
puts 'My Each'
numbers.my_each { |item| puts item }
puts 'Each'
numbers.each { |item| puts item }
