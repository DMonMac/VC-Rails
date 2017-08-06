class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes do |t|
      t.string :name
      t.string :location
      t.text :description
      t.float :price
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :homes, [:user_id, :created_at]
  end
end
