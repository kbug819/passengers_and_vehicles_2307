class Park
  attr_reader :name, :admission_price, :vehicles, :revenue
  attr_writer :revenue
  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
    @revenue = 0

  end

  def add_vehicle(new_vehicle)
    @vehicles << new_vehicle
  end

  def passengers
    passenger_list = []
    @vehicles.each do |vehicle|
      passenger_list << vehicle.passengers
    end.flatten
    passenger_list.flatten
  end

  # def passengers
  #   passenger_list = []
  #   @vehicles.each do |vehicle|
  #     passenger_list << vehicle.passengers
  #   end.flatten
  #   list = passenger_list.flatten
  #   # adult_passengers = []
  #     adult_passengers = list.find_all do |passenger|
  #       passenger.adult?
  #       # adult_passengers << passenger.adult?   
  #     end
  #     count = adult_passengers.length
  #     total = count * @admission_price
      
  #     @revenue += total
  #   list 
  # end

def track_revenue
  adult_passengers = []
  adults = passengers.find_all do |passenger|
    passenger.adult?
  end
    adult_passengers << adults
  count = adult_passengers.length
  total = count * admission_price

  @revenue = total
end

  
  #   # adult_passengers = []
  #     adult_passengers = list.find_all do |passenger|
  #       passenger.adult?
  #       # adult_passengers << passenger.adult?   
  #     end
  #     count = adult_passengers.length
  #     total = count * @admission_price
      
  #     @revenue += total
  #   list 
  # end


#   def track_revenue
#     adult_passengers = []
#     @vehicles.each do |vehicle|
#       count = vehicle.passengers.count do |passenger|
#         passenger.adult? 
#         require 'pry';binding.pry
#           # adult_passengers << passenger
        
#         end
#         @revenue = count * @admission_price
#       # passenger_count = adult_passengers.count
#       # revenue_total = passenger_count * @admission_price
#       # @revenue = revenue_total
#     end
    
#   end

#   # def track_revenue
#   #   @vehicles.each do |vehicle|
#   #     vehicle.passengers.each do |passenger|
#   #       if passenger.adult? == true
#   #       end
#   #     end
#   #   end
#   #   @revenue = count * admission_price
#   # end


  
  


end