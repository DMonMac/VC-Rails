class Home < ApplicationRecord
  mount_uploader :home_picture, HomePictureUploader

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
