class Booking < ApplicationRecord
  belongs_to :boat
  belongs_to :consumer, class_name: "User"

  validates :start_date, presence: true
  validates :end_date, presence: true
end
