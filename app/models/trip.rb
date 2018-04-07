class Trip < ApplicationRecord
  belongs_to :passenger
  belongs_to :driver

  def self.create_trip(passenger)
    # in charge of finding a driver and calling Trip.new or Trip.create to assoc trip with it
    date = Date.today
    driver = Driver.all.sample
    cost = (rand()*50).round(2) * 100
    Trip.create(date: date,driver: driver,passenger: passenger,cost: cost)
  end


end
