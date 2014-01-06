require 'prime'

def sum_of_primes(n)
  problem_max = 2000000
  sum = 0
  Prime.each(n) do |prime|
    sum += prime if prime < problem_max
  end
  puts sum
end

sum_of_primes(2000000)