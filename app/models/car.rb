class Car < ApplicationRecord
  has_many :bookings

  validates :model_name, presence: true
  validates :image, presence: true
  validates :driver_name, presence: true, length: { maximum: 50 }
  validates :price, presence: true, numericality: { greater_than: 0 }
end
