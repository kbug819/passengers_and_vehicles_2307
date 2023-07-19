class Passenger
  attr_reader :name, :age

  def initialize(passenger_info)
    @name = (passenger_info)["name"]
    @age = (passenger_info)["age"]
    @is_driver = false
  end

  def adult?
    if @age >= 18
      true
    else
      false
    end
  end

  def driver?
    @is_driver
  end

  def drive
    @is_driver = true
  end
end