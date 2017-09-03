class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :home


  validates :user_id, presence: true
  validates :home_id, presence: true
  validates :start_date, presence: true, uniqueness: true
  validates :end_date, presence: true, uniqueness: true

  default_scope -> { order(updated_at: :desc) }
end
