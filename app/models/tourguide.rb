class Tourguide < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Carrierwave - associate image with model
  mount_uploader :tg_avatar, TgAvatarUploader

end
