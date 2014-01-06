puts "How many natural numbers would you like to include in this?"
user_input = gets.chomp.to_i

def sum_of_squares(n)
  sum_of_squares_result = 0
  (1..n).inject { |result, n| result + n **2 }
end

def square_of_sum(n)
  (1..n).reduce(:+) ** 2 
end

#puts (sum_of_squares(user_input)).to_s
#puts (square_of_sum(user_input)).to_s
puts (square_of_sum(user_input) - sum_of_squares(user_input)).to_s