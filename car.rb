class Car
	def initialize
		@fuel = 10.0
		@distance = 10.0
		puts "initialize is running automatically"
	end

	def get_info
		"I'm a car! I've driven #{@distance} miles and have #{@fuel} gallons of gas left"
	end

	def drive(miles_driven)
		miles_driven.to_f
		if miles_driven <= @fuel * 20.0
			@fuel = @fuel - (miles_driven/20.0)
			@distance = @distance + miles_driven
		else
			miles_driven = @fuel * 20
			@fuel = 0
			puts "you need to fuel up"
			@distance = @distance + miles_driven
		end
	end

	def fuel_up
		gas = 10 - @fuel
		price = 3.5 * gas
		puts "you spent #{price} on gas"
		@fuel = 10
	end
	
	
end