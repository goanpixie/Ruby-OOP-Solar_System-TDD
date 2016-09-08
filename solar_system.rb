class Solar_System
  attr_accessor :name,:planets

    def initialize
      @name = name
      @planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune" ]
    end

    def count_planets
      @planets.count
    end

    def SuperNova
      @planets.clear
      end
end

puts Solar_System.new.count_planets





