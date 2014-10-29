def translate (phrase)
	vowels = ["a", "e", "i", "o", "u" ]
	final_phrase = []
	
	phrase_array = phrase.split(" ")
	phrase_array.each  do |word|
		@n = 0
		if vowels.include? word[0]
			final_phrase << word + "ay"
		else
			loop do
				if word.slice(@n, 2) == "qu"
					word[word.length] = "qu"
					@n = @n + 2
				else
					word[word.length] = word[@n]
					@n = @n + 1
				end
				
				break if vowels.include? word[@n]			
			end		

			final_phrase << (word.slice(@n, word.length) + "ay")
		end
	end
	final_phrase.join(" ")
end



