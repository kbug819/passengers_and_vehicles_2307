require './lib/passenger'
require './lib/vehicle'
require './lib/park'

RSpec.describe Park do

  before do
    @yosemite = Park.new("Yosemite National Park", 35)
    @canyonlands = Park.new("Canyonlands National Park", 30)
    @vehicle = Vehicle.new("2001", "Honda", "Civic")  
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})   
    @jude = Passenger.new({"name" => "Jude", "age" => 20})    
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})          
  end

  describe "#initialize" do
    it "instantiates a new object" do
    expect(@yosemite).to be_an_instance_of(Park)
    expect(@canyonlands).to be_an_instance_of(Park)
    end

    it "has attributes" do 
      expect(@yosemite.name).to eq("Yosemite National Park")
      expect(@canyonlands.name).to eq("Canyonlands National Park")
      expect(@yosemite.admission_price).to eq(35)
      expect(@canyonlands.admission_price).to eq(30)
    end
  end
end