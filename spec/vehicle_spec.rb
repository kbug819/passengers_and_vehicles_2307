require './lib/passenger'
require './lib/vehicle'

RSpec.describe Vehicle do

  before do
    @vehicle = Vehicle.new("2001", "Honda", "Civic")  
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})   
    @jude = Passenger.new({"name" => "Jude", "age" => 20})    
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})          
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

  describe "#passengers" do
    it "holds a list of passengers" do
      expect(@vehicle.passengers).to eq([])
      @vehicle.add_passenger(@charlie)
      @vehicle.add_passenger(@jude)
      @vehicle.add_passenger(@taylor)
      expect(@vehicle.passengers).to eq([@charlie, @jude, @taylor])
    end
  end

  describe "#add_passenger" do
    it "adds passengers to list" do
      expect(@vehicle.passengers).to eq([])
      @vehicle.add_passenger(@charlie)
      @vehicle.add_passenger(@jude)
      @vehicle.add_passenger(@taylor)
      expect(@vehicle.passengers).to eq([@charlie, @jude, @taylor])
    end
  end

  describe "number adults" do
    it "counts the number of adults on list" do
      expect(@vehicle.passengers).to eq([])
      @vehicle.add_passenger(@charlie)
      @vehicle.add_passenger(@jude)
      @vehicle.add_passenger(@taylor)
      expect(@vehicle.passengers).to eq([@charlie, @jude, @taylor])
      expect(@vehicle.num_adults).to eq(2)
    end
  end


end
