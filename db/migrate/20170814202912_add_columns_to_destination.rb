class AddColumnsToDestination < ActiveRecord::Migration[5.1]
  def change
    add_column :destinations, :street, :string
    add_column :destinations, :city, :string
    add_column :destinations, :zip_code, :string
    add_column :destinations, :country, :string
    add_column :destinations, :latitude, :float
    add_column :destinations, :longitude, :float
  end
end
