def palindromic(digits)
	max, first, second = 0, 0, 0
	x.downto(1) do |one|
  	y.downto(1) do |two|
  		product = one * two 	
  		if (num.to_s == num.to_s.reverse) && (product > max)
  			max, first, second = product, one, two
  		end
  		break if product < max 
  	end
  end
  puts max, first, second
end



# completely wrong
def step(x, y)
	one = x 
	two = y
	
	one.downto(1) do |one_min|
  	product = one_min * two 	

  	if same?(product)
  		return product, one_min, two
  	elsif one == two 
  		two -= 1
  	else 
  		one -=1
  	end
  end
end


# A palindromic number reads the same both ways. The largest palindrome 
#made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.


#I know:
#--For 3 digits, it's a product below 1,000,000. (1*10**(num*2))
#----So, decrement by 1 until we find it.
#--The multipliers are 999 or below. Or, (1*10**(num))-1
#----Multiplication goes by:
#------99*98 decrement by one
#------98*98 equal each other
#------98*97 decrement by one
#--To check for palindromic:  123.to_s == 123.to_s.reverse 





	# while same?(product)
 #  	if same?(product)
 #  		p product, one, two
 #  	elsif one == two 
 #  		two -= 1
 #  	else
 #  		one -=1
 #  	end	
 #  	product = one * two 
	# end