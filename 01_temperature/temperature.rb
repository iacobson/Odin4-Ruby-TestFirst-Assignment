def ftoc (far)
	((far - 32) / (9.00 / 5.00)).round
end

def ctof (cel)
	(32 + cel * 9.00 / 5.00)
end

