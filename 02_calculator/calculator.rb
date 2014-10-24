def add (x, y)
	x + y
end

def subtract (x, y)
	x - y
end

def sum (a = [])
	a.inject(:+) || 0 	# alternative to a.inject(0){|acc, el| acc += el}
						# the || is needed for sum of no elements which otherwise will result in nil
end

def multiply (a = [])
	a.inject(:*)
end

def power (x, y)
	x ** y
end

def factorial (a)
	(1 .. a).inject(:*)	|| 1
end