require 'prime'

puts "What prime number would you like?"
user_input = gets.chomp.to_i

prime_array = []
Prime.first(user_input).each do |p|
  prime_array << p
end

puts prime_array.last