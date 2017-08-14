class AddFieldsToTourguides < ActiveRecord::Migration[5.1]
  def change
    add_column :tourguides, :tg_first_name, :string
    add_column :tourguides, :tg_last_name, :string
    add_column :tourguides, :tg_rate, :decimal, :precision => 8, :scale => 2
  end
end
