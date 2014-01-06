# dif of sum of square of first 100 number, and square of sum

#sum_square = 0
#square_of_sum = 0

#(1..100).each do |n|
#	sum_square += n ** n
#end

#square_of_sum = sum_square ** sum_square

#puts square_of_sum - sum_square

sum_square = (1..100).reduce { |sum, n| sum += n ** n }
square_of_sum = sum_square ** sum_square

puts square_of_sum
