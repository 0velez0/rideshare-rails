class Driver < ApplicationRecord
  has_many :trips, dependent: :destroy

  validates :name, presence: true, format: {with: /\A[a-zA-Z\s\.]+\z/}
  validates :vin, presence: true, length: {is: 17}

  def total_revenue
    fee = 1.65
    subtotal = 0
    driver_take_home = 0.8

    self.trips.each do |trip|
      trip.cost /= 100
      subtotal += trip.cost - fee
    end
    total = (subtotal * driver_take_home).round(2)
    return total
  end

  def average_rating
    total_ratings = 0
    self.trips.each do |trip|

      if trip.rating != nil

        total_ratings += trip.rating
      end
    end
    average = ((total_ratings.to_f) / trips.length).round(1)
    return average
  end

  # def car_make
  #
  # end


end
