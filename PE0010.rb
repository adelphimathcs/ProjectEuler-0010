#Sieve of Eratosthenes for generating primes
def sieve(up_to)
  nums = (0..up_to).to_a
  nums[0] = nums[1] = nil #2 is our first prime
  for i in 2 .. Math.sqrt(up_to) #Only need to check up to sqrt
    next if !nums[i] 
    (i**2).step(up_to, i) do |j| #step by multiples of curent number
      nums[j] = nil # mark
    end
  end
  nums.compact #remove nils (composites)
end

#Generate primes up to 2m
primes = sieve(2000000)

#Print sum
puts primes.reduce(:+)

