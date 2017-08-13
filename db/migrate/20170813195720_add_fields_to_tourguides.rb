class AddFieldsToTourguides < ActiveRecord::Migration[5.1]
  def change
    add_column :tourguides, :tg_first_name, :string
    add_column :tourguides, :tg_last_name, :string
  end
end
