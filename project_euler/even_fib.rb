puts "How high would you like this sequence to sum?"
user_input = gets.chomp.to_i

def fibonacci(n)
	tot = 0
	prev = 1
	cur = 2
	until cur > n 
		#tot += cur if cur.even?
		if cur.even?
			tot = tot + cur
		end

  	next_val = cur + prev
		
		prev = cur
		cur = next_val
	end
	puts tot.to_s
end

fibonacci(user_input)
