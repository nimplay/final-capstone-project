class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :date, presence: true
  validates :date_return, presence: true
  validates :city, presence: true
end
