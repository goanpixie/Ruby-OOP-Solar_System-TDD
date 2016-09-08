require_relative "Solar_System"

class Planet < Solar_System
  attr_accessor :description, :population

	def add_planets=(planet)
		@planets.push(planet)
	end
end