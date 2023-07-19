require './lib/passenger'
require './lib/vehicle'

RSpec.describe Vehicle do

  before do
    @vehicle = Vehicle.new("2001", "Honda", "Civic")         
  end

  describe "#initialize" do
    it "instantiates a new object" do
    expect(@vehicle).to be_an_instance_of(Vehicle)
    end

    it "has attributes" do 
      expect(@vehicle.year).to eq("2001")
      expect(@vehicle.make).to eq("Honda")
      expect(@vehicle.model).to eq("Civic")
    end
  end

  describe "#speeding?" do
    it "shows if vehicle is speeding" do
      expect(@vehicle.speeding?).to eq(false)
      @vehicle.speed
      expect(@vehicle.speeding?).to eq(true)
    end
  end

  describe "#speed" do
    it "changes the vehicle to speeding" do
      expect(@vehicle.speeding?).to eq(false)
      @vehicle.speed
      expect(@vehicle.speeding?).to eq(true)
    end
  end
end
