class Home < ApplicationRecord
  belongs_to :user

  default_scope -> { order(updated_at: :desc) }
  validates :user_id, presence: true


  mount_uploader :home_picture, HomePictureUploader

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
