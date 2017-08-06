class User < ApplicationRecord
  has_many :homes, dependent: :destroy

  before_save { self.email = email.downcase }

  # NAME CONDITIONS
    validates :first_name, presence: true,
                           length: { maximum: 50 }

    validates :last_name, presence: true,
                          length: { maximum: 50 }

  # EMAIL CONDITIONS
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true,
                      length: { maximum: 255 },
                      format: { with: VALID_EMAIL_REGEX },
                      uniqueness: { case_sensitive: false }

  # PASSWORD CONDITIONS
    has_secure_password
    validates :password, presence: true,
                         length: { minimum: 8 },
                         allow_nil: true # Leaving the password blank will edit everything else without changing the password. 'has_secure_password' ensures that blank passwords are not accepted as password edits.

  # Defines a proto-feed.
  # See "Following users" for the full implementation.
    def feed
      Home.where("user_id = ?", id)
    end



end
