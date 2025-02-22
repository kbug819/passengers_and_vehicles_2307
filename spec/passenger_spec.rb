require './lib/passenger'

RSpec.describe Passenger do

  before do
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})   
  end

  describe "#initialize" do
    it "instantiates a new object" do
      expect(@charlie).to be_an_instance_of(Passenger)
      expect(@taylor).to be_an_instance_of(Passenger)
    end

    it "has attributes" do 
      expect(@charlie.name).to eq("Charlie")
      expect(@charlie.age).to eq(18)
    end
  end

  describe "#adult?" do
    it "shows if passenger is an adult" do
      expect(@charlie.adult?).to eq(true)
      expect(@taylor.adult?).to eq(false)
    end
  end

  describe "#driver?" do
    it "returns if passenger is the driver" do
      expect(@charlie.driver?).to eq(false)
      @charlie.drive
      expect(@charlie.driver?).to eq(true)
    end
  end

  describe "#drive" do
    it "changes passenger to driver" do
      expect(@charlie.driver?).to eq(false)
      @charlie.drive
      expect(@charlie.driver?).to eq(true)
    end
  end


      
end