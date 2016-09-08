require_relative "Solar_System"

class Planet < Solar_System
  attr_accessor :description, :population, :planets

	def add_planets(planet)
		@planets.push(planet)
	end
end

puts Planet.new.add_planets("Quizer")