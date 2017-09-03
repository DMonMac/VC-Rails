class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.references :user, foreign_key: true
      t.references :home, foreign_key: true

      t.timestamps
    end
    add_index :bookings, [:user_id, :home_id, :created_at]
  end
end
