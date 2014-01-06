#problem 12
require 'prime'

def number_of_divisors(n)
  count = 1
  until Prime.prime_division(count).length > n do
    count += count
  end
  puts count
end


puts "How many divisors would you like to see max?"

user_input = gets.chomp.to_i

puts number_of_divisors(user_input)