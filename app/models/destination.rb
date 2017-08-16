class Destination < ApplicationRecord
  # Relationships
  belongs_to :tourguide

  # Conditions
  validates :tourguide_id, presence: true
  validates :d_name, presence: true
  validates :city, presence: true
  validates :country, presence: true

  # Geocoder config
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  def address
    [d_name, street, city, zip_code, country].join(',')
  end

  def address_changed?
    d_name_changed? || street_changed? || city_changed? || zip_code_changed? || country_changed?
  end

  mount_uploader :d_pic, DPicUploader
end
