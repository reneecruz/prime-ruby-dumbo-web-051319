def prime?(integer)
    if integer <= 1
      return false
    else 
        if (2...integer).any? { |i| integer % i  == 0}
            return false
        else
            return true
        end 
    end
end

=begin
# Add  code here!
def prime?(integer)
  is_prime = [-1.0/0.0..+1.0/0.0]
  # returns true for prime numbers
  if integer % 2 == 0 || integer % 3 == 0
    return false
  elsif integer % -2 == 0 || integer % -3 == 0 
    return false
  elsif integer == integer.even? 
    return false
  elsif integer % 5 == 0
    return false
  else
    return true
  end
  # returns false for non-prime numbers
  # be sure to account for negative numbers!
end
=end
=begin
# Return a list of the prime factors for a natural number
def prime?(n)
	a = []               #Prepare an empty list.
 	f = 2                #The first possible factor.	
 	while n > 1  #While n still has remaining factors...
 	  n % f == 0 #The remainder of n divided by might 0 
 	  a.push(f) #If so, it divides n. Add f to the list.
 	  n /= f   #Divide that factor out of n.
 	end
 	if  #But if f is not a factor of n,
 		f += 1   #Add one to f and try again.
 	return a  #Prime factors may be repeated: 12 factors to 2,2,3
 	end
end 
=end
=begin
def prime?(n)
    array = [-1.0/0.0..+1.0/0.0]
    if n < 5 then

        if n == 2 || n == 3 then

            return true

        else
            return false
        end
    end
end
=end
=begin
 def sieve(upper)
   nums = (2..upper).to_a
   iend = nums.size - 1
   sqrt = Math.sqrt(upper).to_i
   (0..(nums.index(sqrt))).each do |i|
     n = nums[i]    # n is either prime or nil
     (i + n).step(iend, n) { |j| nums[j] = nil } unless n.nil?
   end
   nums.compact     # eliminate nil entries
 end

 sieve(19)          # returns [2, 3, 5, 7, 11, 13, 17, 19]
=end

