class Home < ApplicationRecord
  belongs_to :user
  default_scope -> { order(updated_at: :desc) }
  validates :user_id, presence: true

  validates :name, presence: true, length: {maximum: 140}
<<<<<<< HEAD
  validates :address, presence: true
=======
>>>>>>> 245a9ea33d4eba2973ff91cfe4007b86fe4a7a7d
  validates :description, presence: true, length: {maximum: 140}
  validates :price, presence: true
  mount_uploader :picture, PictureUploader
  validate :picture_size

  private

  # Validate uploaded picture size
  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5 MB")
    end
  end

end
