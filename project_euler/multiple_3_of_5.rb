def sum_of_multiples
	tot = 0
	(1...1000).each do |n|
		if n % 3 == 0
			tot += n
		elsif n % 5 == 0
			tot += n
		end
	end
	puts tot.to_s
end

sum_of_multiples
