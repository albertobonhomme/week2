class Check
	def initialize(number)
		@number = number
	end

	def amount
		numberstring = @number.to_s.split("")
		@thousand = numberstring[0]
		@hundred = numberstring[1]
		@decena
		@units = numberstring[3]
	end

	def text
		"#{@thousand} thousand #{@hundred} hundred #{@decena} #{@units} and #{cents} cents dollars"
	end
end


check = Check.new(2943)

puts check.amount