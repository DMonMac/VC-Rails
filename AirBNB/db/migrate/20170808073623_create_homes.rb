class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes do |t|
      t.string :name
      t.string :address
      t.text :description
      t.float :price

      t.timestamps
    end
    add_index :homes, [:user_id, :created_at, :updated_at]
  end
end
