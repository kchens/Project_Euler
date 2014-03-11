def prime_three(num) #works
  sum = 2
  3.step(num, 2) { |x| 
    sum += x if prime?(x)
  }
  sum
end

def prime_sum(num) #should work
  arr = [2]
  i = 3

  
  #arr.each do |x|
  	while (i <= num)
      arr << i if prime?(i)
      #next if arr[-1] == i
      i += 2
    end
  #end
  arr.inject { |sum, v| sum + v }

end


def prime?(num)
  y = Math.sqrt(num).floor

	(2..y).each do |j| #Euler's math theorem
	  return false if (num % j == 0) 
	end
	return true
end

def prime_two(num) #doesn't work
  arr = [3] 
  j = 3 
  
  while (j < num)
    j += 2
    next if arr.include(j)
    arr << j if ()
    # arr.each do |i|
    #   arr << j if (j % i != 0)
    # end
  end

  arr.inject(2) { |sum, v| sum + v }
end

#Answer: 142913828922