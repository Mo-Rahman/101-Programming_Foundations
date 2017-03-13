require 'pry'       # <= add this to use pry

class Car
  attr_accessor :brand, :model

  def initialize(new_car)
    brand = new_car.split(' ').first
    model = new_car.split(' ').last
  end
  
end

betty = Car.new('Ford Mustang')
binding.pry     # <= execution will stop here
betty.model.start_with?('M')
