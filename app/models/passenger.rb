class Passenger < ApplicationRecord
  has_many :trips, dependent: :destroy

  validates :name, presence: true, format: {with: /\A[a-zA-Z\s\.]+\z/}
  validates :phone_num, presence: true

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
