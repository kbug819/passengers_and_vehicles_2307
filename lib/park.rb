class Park
  attr_reader :name, :admission_price, :vehicles
  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
  end

  def add_vehicle(new_vehicle)
    @vehicles << new_vehicle
  end
  
end