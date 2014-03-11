def gcd(x,y)
	while y != 0
		t = y
		y = x%y
		x = t
	end
		t
end

def lcm(x,y)
	(x * y) / gcd(x,y)
end

def smallmult(num)
	result = 1

	(2..num).each do |x| 
		result = lcm(x, result)
		p [x, result]
	end
	p result 
end

# def multiple

# 	i = 1
# 	start = 21
# 	ret = []
	
# 	while start < 10**9
# 		while (i<21)
# 			if start % i == 0
# 				ret << true
# 			else 
# 				ret << false
# 			end
# 			i+=1
# 		end
# 		break if !ret.any? {|x| x=='false'}
# 		start +=1
# 	end
# 	p start
# end


# def divisible?(num)
# 	i = 1
# 	ret = []
	
# 	while (i<21)
# 		if num % i == 0
# 			ret << true
# 		else 
# 			ret << false
# 		end
# 		i+=1
# 	end

# 	!ret.any? {|x| x=='false'}
# end