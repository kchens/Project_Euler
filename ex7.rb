def prime?(num)
  y = Math.sqrt(num).floor

	(2..y).each do |j| #Euler's math theorem
	  return false if (num % j == 0) 
	end
	return true
end

def num_prime(idx) #wrong, look at second method

	counter = 2
	x = 3

	while counter <= idx
		return x if counter == idx
		counter +=1 if prime?(x)
		x += 2
	end
end

def num_prime2(target)

	count = 3
	index = 1

	while true #infinite loop..
		if (target = 1)	
			return 2
		else
			index += 1 if prime?(count)
			return count if index == target #..that'll break here upon the "return"
			count += 2
		end
	end
end

def num_prime3(idx)
	ret = [2]
	counter = 1
	x = 3

	while true
		if idx == 1
			return 2
		else
			counter +=1 if prime?(x)
			ret << x if prime?(x)
			break if counter == idx
			x += 2
		end
	end
	p ret[-1]
end

#Prime number is divisible by 1 and itself only.
#If prime, we push to array.
#We call the array's index at [-1] to get the num index.