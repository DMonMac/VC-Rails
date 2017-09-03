class Home < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy, through: :user

  default_scope -> { order(updated_at: :desc) }
  validates :user_id, presence: true
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price, presence: true

  mount_uploader :home_picture, HomePictureUploader

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
