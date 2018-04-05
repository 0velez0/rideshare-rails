class Driver < ApplicationRecord
  has_many :trips

  validates :name, presence: true, format: {with: /\A[a-zA-Z\s\.]+\z/}
  validates :vin, presence: true, length: {is: 17}

  def total_revenue
    fee = 1.65
    subtotal = 0
    driver_take_home = 0.8

    self.trips.each do |trip|
      subtotal += trip.cost - fee
    end
    total = (subtotal * driver_take_home).round(2)
    return total
  end

  def average_rating
    total_ratings = 0
    self.trips.each do |trip|
      total_ratings += trip.rating
    end
    average = ((total_ratings.to_f) / trips.length).round(2)
    return average
  end

  # def car_make
  #
  # end


end
