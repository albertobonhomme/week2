require 'pry'

class Lexiconomitron
	def initialize
		@small = []
	end

	def eat_t(string)
		string.downcase.delete!("t")

	end

	def shazam(array)
		@reversed_array = array.each {|x| x.reverse!}
		first_and_last
	end

	def first_and_last
		last = @reversed_array.last
		first = @reversed_array.first
		@result = [eat_t(first), eat_t(last)]
	end

	def oompa_loompa(array)
		oompa = []
		array.each do |x| 
				if x.length < 4
					oompa.push(x)
				end
		end
		oompa
	end
end