module Weather

	def can_land?
		if rand(1..10) >= 8
			stormy = true
			can_land?, can_take_off? = false
		else rand(1..10) > 7 and <= 8
			storm_brewing? = true
			can_land? = true 
			can_take_off? = false
		elsif rand(1..10) <= 7
			stormy? = false
			can_land?, can_take_off? = true
		end
	end
	
end