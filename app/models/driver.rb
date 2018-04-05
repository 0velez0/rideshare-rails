class Driver < ApplicationRecord
  has_many :trips

  def total_revenue
    fee = 1.65
    subtotal = 0 
    driver_take_home = 0.8

    self.trips.each do |trip|
      subtotal += trip.cost - fee
    end
    total = subtotal * driver_take_home
    return total
  end

  def average_rating
    total_ratings = 0
    self.trips.each do |trip|
      total_ratings += trip.rating
    end
    average = (total_ratings.to_f) / trips.length

    return average
  end



end
