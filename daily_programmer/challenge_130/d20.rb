#Daily Programming Challenge #130 [Easy]
#Roll the Dies

puts "What dice would you like to roll (NdM format)?"
cli_input = gets.chomp

dice = cli_input.split("d")[0].to_i
sides = cli_input.split("d")[1].to_i

dice.times do
  print "#{rand(sides + 1)} "
end
puts ""