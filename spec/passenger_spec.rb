require './lib/passenger'

RSpec.describe Passenger do

before do
@charlie = Passenger.new({"name" => "Charlie", "age" => 18})
@taylor = Passenger.new({"name" => "Taylor", "age" => 12})   

describe "#initialize" do
  it "instantiates a new object" do
   
  end

  it "has attributes" do 
    expect(@charlie.name).to eq("Charlie")
    expect(@charlie.age).to eq(18)