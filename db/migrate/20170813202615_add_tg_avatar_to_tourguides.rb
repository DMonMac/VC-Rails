class AddTgAvatarToTourguides < ActiveRecord::Migration[5.1]
  def change
    add_column :tourguides, :tg_avatar, :string
  end
end
