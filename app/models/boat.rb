class Boat < ApplicationRecord
  belongs_to :owner, class_name: "User"
  mount_uploader :photo, PhotoUploader
end
