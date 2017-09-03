class Tourguide < ApplicationRecord
  has_many :destinations, dependent: :destroy
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Carrierwave - associate image with model
  mount_uploader :tg_avatar, TgAvatarUploader

  validates :tg_first_name, presence: true
  validates :tg_last_name, presence: true
  validates_numericality_of :tg_rate, greater_than: 0
  validates_numericality_of :tg_phone
end
