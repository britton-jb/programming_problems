(1..500).each do |a|
  (1..500).each do |b|
    c = Math.sqrt(a ** 2 + b ** 2)
    if a + b + c == 1000
      puts a * b * c
      break
    end
  end
end
  