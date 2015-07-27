#Sieve of Eratosthenes for generating primes
def sieve(max)
  nums = (0..max).to_a
  nums[0] = nums[1] = nil #2 is our first prime
  2.upto(Math.sqrt(max)) do |i| #Only need to check up to sqrt
    next unless nums[i] 
    (i**2..max).step(i) do |j| #step by multiples of curent number
      nums[j] = nil # mark
    end
  end
  nums.compact #remove nils (composites)
end

#Generate primes up to 2m
primes = sieve(2000000)

#Print sum
puts primes.reduce(:+)

