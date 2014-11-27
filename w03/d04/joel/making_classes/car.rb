class Car
  attr_accessor :make, :model, :year,:current_speed

   def initialize(attr)
    @make = attr[:make]
    @make = attr[:model]
    @year = attr[:year]
    @current_speed = 0
   end

  def drive(speed)
    @current_speed = speed
  end

end



a_car = Car.new({
  make: "Holden",
  model: "Club Sport",
  year: 2003
})
a_car.drive(120)
a_car.drive(80)
