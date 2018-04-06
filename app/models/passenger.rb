class Passenger < ApplicationRecord
  has_many :trips

  def total_spend
      total = 0.0
      self.trips.each do |trip|
        if trip.cost != nil
          trip.cost /= 100
        total += trip.cost
        end
      end
      return total
    end
end
