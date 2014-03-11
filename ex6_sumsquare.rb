def diff(x)
	arr = (1..x).to_a
	square = ( arr.inject(0) { |result, val| result + val } ) 
	sum = ( arr.inject() { |result, val| result + val ** 2 } )

	ret = (square**2) - sum
	puts ret, square, sum
end

def diff2(x)
	arr = (1..x).to_a
	square, sum = 0, 0
	arr2 = []

	arr.each { |y| square += y }
	arr.each { |y| sum += y **2 }
	ret = (square**2) - sum

	puts ret, square, sum

end