require 'prime'
puts "What number do you want the largest prime factors for?"
user_input = gets.chomp.to_i
#user_input = 600851475143

puts Prime.prime_division(user_input).max
