class Destination < ApplicationRecord
  belongs_to :tourguide
  validates :tourguide_id, presence: true
end
