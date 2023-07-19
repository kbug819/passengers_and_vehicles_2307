class Park
  attr_reader :name, :admission_price, :vehicles, :revenue
  attr_writer :revenue
  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []

  end

  def add_vehicle(new_vehicle)
    @vehicles << new_vehicle
  end

  def passengers
    passenger_list = []
    @vehicles.flat_map do |vehicle|
      passenger_list << vehicle.passengers
    end.flatten
    passenger_list.flatten
  end

def revenue
  adults = passengers.find_all do |passenger|
    passenger.adult?
  end
    adults.length * admission_price
end
end