class Vehicle
  attr_reader :year, :make, :model, :passengers
  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @is_speeding = false
    @passengers = []
    
  end

  def speeding?
    @is_speeding
  end

  def speed
    @is_speeding = true
  end

  def add_passenger(new_passenger)
    @passengers << new_passenger
  end

  def num_adults
    adult_pass = []
    @passengers.each do |passenger|
      if passenger.adult? == true
        adult_pass << passenger
      end
    end
    adult_pass.count
  end

end