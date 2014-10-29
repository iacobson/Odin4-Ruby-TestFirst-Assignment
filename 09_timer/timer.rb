class Timer
	attr_accessor :seconds
	def initialize (seconds = 0)
		@seconds = seconds
	end

	def time_string
		second = "00"
		minute = "00"
		hour = "00"

		if @seconds < 60
			second = @seconds.to_s
		elsif (@seconds >= 60) && (@seconds < 3600)
			second = (@seconds % 60).to_s
			minute = (@seconds / 60).to_i.to_s
		else
			second = (@seconds % 60).to_s
			minute = ((@seconds / 60).to_i % 60).to_s
			hour = (@seconds / 3600).to_i.to_s
		end

		if second.length == 1
			second = ("0" + second).to_s
		end

		if minute.length == 1
			minute = ("0" + minute).to_s
		end

		if hour.length == 1
			hour = ("0" + hour).to_s
		end

		hour + ":" + minute + ":" + second
				
	end

end
