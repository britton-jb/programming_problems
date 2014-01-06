top = 999
result = 0

def palindrome?(n)
	n = n.to_s
	return true if n.reverse == n
end

top.downto(100).each do |a|
	a.downto(100).each do |b|
		product = a * b
		result = product if product > result && palindrome?(product)
	end
end

puts result.to_s
