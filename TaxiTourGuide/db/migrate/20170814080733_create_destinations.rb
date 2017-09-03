class CreateDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :destinations do |t|
      t.string :d_name
      t.string :d_description
      t.references :tourguide, foreign_key: true

      t.timestamps
    end
    add_index :destinations, [:created_at, :updated_at]
  end
end
