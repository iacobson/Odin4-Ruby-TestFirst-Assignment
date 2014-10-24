def echo (text)
	text
end

def shout (text)
	text.upcase
end

def repeat (text, n=nil)
	if n == nil
		repetition = [text] * 2
		repetition.join(" ")
	else
		repetition = [text] * n
		repetition.join(" ")
	end
end

def start_of_word (text, n)
	text.slice(0, n)
end

def first_word (text)
	text.split(" ")[0]
end

def titleize (sentence)
	small_words = %w[the and over The]
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

