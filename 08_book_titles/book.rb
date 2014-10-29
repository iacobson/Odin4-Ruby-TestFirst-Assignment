class Book
	attr_reader :title
	
	def title=(name)
		@title = titleize(name)
	end

	def titleize (sentence)					# modified version of exercise 03
		small_words = %w[the and over in of a an]
		words = sentence.split(" ")
		words_1 = []
		if words.length == 1
			words[0].to_s.capitalize
		else
			words.each do |word|

				if small_words.include?(word)
					words_1 << word.to_s.downcase
				else
					words_1 << word.to_s.capitalize
				end
			
			end
			words_1[0] = words_1[0].to_s.capitalize
			words_1.join(" ").to_s
		end
	end

end