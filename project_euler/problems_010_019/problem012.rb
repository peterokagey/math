# The sequence of triangle numbers is generated by adding the natural numbers. 
# So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The 
# first ten terms would be:

# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

# Let us list the factors of the first seven triangle numbers:

#  1: 1
#  3: 1,3
#  6: 1,2,3,6
# 10: 1,2,5,10
# 15: 1,3,5,15
# 21: 1,3,7,21
# 28: 1,2,4,7,14,28
# We can see that 28 is the first triangle number to have over five divisors.

# What is the value of the first triangle number to have over five hundred 
# divisors?
start = Time.now

require_relative '../function/sieve_of_eratosthenes'

primes = sieve_of_eratosthenes(10000)

def prime_factors(n, primes)
	prime_factors_hash = Hash.new(0)
	primes.each do |k|
		loop do
			break unless n % k == 0
			n /= k
			prime_factors_hash[k] += 1 
		end
		break if n == 1
	end
	prime_factors_hash
end

def number_of_factors(prime_factors_hash)
	prime_factors_hash.collect{|k,v| v + 1}.reduce(:*)
end

i = 2
loop do
	i += 1
	break if number_of_factors(prime_factors((i*(i+1)/2), primes)) >= 500
end

p i*(i+1)/2
p Time.now-start

# 76576500
# 1.163591 seconds

# I'm not sure why this takes so long.