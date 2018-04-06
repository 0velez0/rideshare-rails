class Passenger < ApplicationRecord
  has_many :trips, dependent: :destroy

  validates :name, presence: true, format: {with: /\A[a-zA-Z\s\.]+\z/}
  validates :phone_num, presence: true

end
