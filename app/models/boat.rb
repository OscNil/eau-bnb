class Boat < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :bookings
  mount_uploader :photo, PhotoUploader
end
