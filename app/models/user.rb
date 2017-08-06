class User < ApplicationRecord
  has_many :homes, dependent: :destroy

  # Rails can't infer these automatically, so it needs to be stated. The 'foreign_key' serves like the link for the Relationship and User models.
  has_many :active_relationships, class_name:  "Relationship",
                                  foreign_key: "follower_id",
                                  dependent:   :destroy

  has_many :passive_relationships, class_name: "Relationship",
                                   foreign_key: "followed_id",
                                   dependent: :destroy

  # 'source' tells Rails that the source of the following array is the set of followed ids
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships # 'source' here is not needed coz by default, Rails will singularize “followers” and automatically look for the foreign key follower_id

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
  # Returns a user's status feed.
  def feed
    following_ids = "SELECT followed_id FROM relationships
                     WHERE  follower_id = :user_id"
    Home.where("user_id IN (#{following_ids})
                     OR user_id = :user_id", user_id: id)
   end

    # Follows a user.
    def follow(other_user)
      following << other_user # the shovel operator << appends to the end of an array
    end

    # Unfollows a user.
    def unfollow(other_user)
      following.delete(other_user)
    end

     # Returns true if the current user is following the other user.
    def following?(other_user)
      following.include?(other_user) # 'include?' checks if 'other_user' is already part of the following array.
    end

end
