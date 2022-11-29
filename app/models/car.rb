class Car < ApplicationRecord
  has_many :bookings

  validates :model_name, presence: true
  validates :image, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
end
