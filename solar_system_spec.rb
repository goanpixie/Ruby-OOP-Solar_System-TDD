require_relative 'solar_system'

RSpec.describe planets do
	describe 'attributes' do
		before do 
			@planets = planets.new
			@planets.name = "Mars"
			@planets.description = "Red planets"
			@planets.population = 0
		end

		it "is expected to have name, description, and population attributes" do 
			expect(@planets).to have_attributes(:name => "Mars")
			expect(@planets).to have_attributes(:description => "Red planets")
			expect(@planets).to have_attributes(:population => 0)
		end
	end

	describe 'behaviour' do
		before do
			@planets = planets.new
		end

		it "should only add planets from planets class" do
			@planets.name = "Mars"
			@planets.planetss = @planets.name
			expect(@planets.planetss).to eq("Mars")
		end
	end
end

RSpec.describe SolarSystem do
	describe 'initialization' do 
		before do
			@solarSystem = SolarSystem.new
		end

		it "should be initialized with a name, if not its default name should be 'Solar System'" do
			expect(@solarSystem.name).to eq("Solar System")
			@solarSystem.name = "Gemini"
			expect(@solarSystem.name).to eq("Gemini")
		end

		it "should contain a list of all planetss" do
			@planets = planets.new

			expect(@solarSystem.planetss).to match_array(["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"])
		end
	end

	describe 'behavior' do 
		before do
			@solarSystem = SolarSystem.new
		end
		it "should count how many planetss are in the Solar System." do
			expect(@solarSystem.count_planetss).to eq(8)
		end

		it "should have a method called Super Nova that destroys all of the planetss in it" do
			@solarSystem.super_nova
			expect(@solarSystem.planetss.empty?).to eq(true)
		end
	end
end
Privacy Policy