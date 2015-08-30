class User
	attr_accessor :email, :pass
	def initialize(email,pass)
		@email = email
		@pass = pass
	end

	def checkall
		if [checklength,containsymbol,containnumber,containletter,containuppercase,containlowercase,usernamecheck].include?(false)
				"Invalid password. Try again. Remember:
				The password must be longer than 7 characters
				The password must contain at least 1 letter, 1 number and 1 symbol 
				The password must contain at least 1 uppercase and 1 lowercase letter
				The password must NOT contain neither the name nor the domain of the email."
		else
				"Valid password"
		end
	end

	def checklength
		if @pass.size < 8
			false
		else
			true
		end
	end

	def containsymbol
		if @pass =~ /[^[:alnum:]]/
			true
		else
			false
		end
	end

	def containnumber
		if @pass =~ /[0-9]/
			true
		else
			false
		end
	end

	def containletter
		if @pass =~ /[A-Za-z]/
			true
		else
			false
		end
	end

	def containuppercase
		if @pass =~ /[A-Z]/
			true
		else
			false
		end
	end

	def containlowercase
		if @pass =~ /[a-z]/
			true
		else
			false
		end
	end

	def usernamecheck
		if @pass.to_s[@email.to_s]
			false
		else
			true
		end
	end
end

