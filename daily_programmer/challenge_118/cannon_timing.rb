puts "Please give us the following to 2 decimal points:
N: Time you want firing system simulated
A: Work time for the shell
B: Work time for the propellent
C: Time it takes to fire the cannon
Please input these on a single line, delimited by spaces."

input = gets.chomp
#input = "5.00 2.00 2.00 1.00"
#input = "99.99 1.23 3.21 5.01"

input.split(" ")

a = input.split(" ")[1].to_f
b = input.split(" ")[2].to_f
c = input.split(" ")[3].to_f
n = input.split(" ")[0].to_f

time = 0
loading = 0
fired = 0

a > b ? loading = a + c : loading = b + c

until time > n
  time += loading
  fired += 1
end

puts "The cannon fired #{fired} times."