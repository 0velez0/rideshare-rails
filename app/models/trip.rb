class Trip < ApplicationRecord
  belongs_to :passenger
  belongs_to :driver
  validates :rating, allow_nil: true, numericality: { only_integer: true, less_than_or_equal_to: 5 }

  def self.create_trip(passenger)
    # in charge of finding a driver and calling Trip.new or Trip.create to assoc trip with it
    date = Date.today
    driver = Driver.all.sample
    #TODO generate a random cost
    cost = (rand()*50).round(2) * 100
    Trip.create(date: date,driver: driver,passenger: passenger,cost: cost)
  end
end
