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
      expect(@vehicle.year).to eq(2001)
      expect(@vehicle.make).to eq("Honda")
      expect(@vehicle.model).to eq("Civic")
    end
  end

  describe "#adult?" do
    xit "shows if passenger is an adult" do
      expect(@charlie.adult?).to eq(true)
      expect(@taylor.adult?).to eq(false)
    end
  end
end
