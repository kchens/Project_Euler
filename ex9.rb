def abc
  for a in 1..500
  	for b in 1..500
  	  for c in 1..500	
  	  	if (a**2 + b**2 == c**2) && (a+b+c==1000)
  	  	  p a, b, c, a*b*c
  	  	end
  	  end
  	end
  end
end


# def abc_two
#   a = m**2 - n**2
#   b = 2*m*n
#   c = m**2 + n**2


#   min = Math.sqrt(1000).floor
#   max = 1000/2
#   (min..max).each do |x|
#   	(min..max).each do |y|
#   	  if (a**2 + b**2 == c**2) && (a+b+c==1000)
#   	    p a, b, c, a*b*c
#   	  end
#   	end
#   end
# end

# def is_thousand?(a,b,c)
#   return true if num == 1000
# end

def abc_three
	2.upto(1000) do |a|
	  (a+1).upto(1000) do |b|
	  	c = Math.sqrt(a**2 + b**2)
	  	if (a+b+c==1000)
	  		return a*b*c 
	  	end
	  end
	end
end