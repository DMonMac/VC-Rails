class AddDPicToDestinations < ActiveRecord::Migration[5.1]
  def change
    add_column :destinations, :d_pic, :string
  end
end
