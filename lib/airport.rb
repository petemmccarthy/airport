class Airport

	DEFAULT_CAPACITY = 6

	def initialize(options = {})
		@planes ||= []
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
	end

	def planes
		@planes
	end

	def empty?
		planes.empty?
	end

	def land!(plane)
		@planes << plane
	end

	def take_off!(plane)
		@planes.delete(plane)
	end

	def capacity
		@capacity
	end

	def plane_count
		plane_count = planes.count
	end

	def full?
		@capacity
	end

end 