class AddHomePictureToHomes < ActiveRecord::Migration[5.1]
  def change
    add_column :homes, :home_picture, :string
  end
end
