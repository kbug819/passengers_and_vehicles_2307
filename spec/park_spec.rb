require './lib/passenger'
require './lib/vehicle'
require './lib/park'

RSpec.describe Park do

  before do
    @yosemite = Park.new("Yosemite National Park", 35)
    @canyonlands = Park.new("Canyonlands National Park", 30)

    @honda = Vehicle.new("2001", "Honda", "Civic")  
    @toyota = Vehicle.new("2010", "Toyota", "Rav-4")
    @ford = Vehicle.new("2011", "Ford", "Focus")

    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})   
    @jude = Passenger.new({"name" => "Jude", "age" => 20})    
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  
    @kaylee = Passenger.new({"name" => "Kaylee", "age" => 33})
    @travis = Passenger.new({"name" => "Travis", "age" => 43})
    @ron = Passenger.new({"name" => "Ron", "age" => 37})


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

  describe "vehicles" do
    it "holds a list of vehicles entering park" do
      expect(@yosemite.vehicles).to eq([])
      expect(@canyonlands.vehicles).to eq([])
    end
  end
  
  describe "add vehicles" do
    it "adds a vehicle to the park list" do
      expect(@yosemite.vehicles).to eq([])
      expect(@canyonlands.vehicles).to eq([])
      @yosemite.add_vehicle(@honda)
      @yosemite.add_vehicle(@toyota)
      @yosemite.add_vehicle(@ford)
      expect(@yosemite.vehicles).to eq([@honda, @toyota, @ford])
    end
  end

  describe "passengers" do
    it "lists all passengers entering park" do
      @yosemite.add_vehicle(@honda)
      @yosemite.add_vehicle(@toyota)
      @yosemite.add_vehicle(@ford)
      @honda.add_passenger(@charlie)
      @honda.add_passenger(@jude)
      @honda.add_passenger(@taylor)
      @toyota.add_passenger(@kaylee)
      @toyota.add_passenger(@travis)
      @ford.add_passenger(@ron)

      expect(@yosemite.passengers).to eq([@charlie, @jude, @taylor, @kaylee, @travis, @ron])
    end
  end



      
end