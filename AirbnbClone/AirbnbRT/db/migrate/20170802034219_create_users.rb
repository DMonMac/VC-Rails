class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
    # These can be added using terminal [A file will be added to the 'migrate' folder]:

    # $ rails generate migration add_index_to_users_email
    add_index :users, :email,                unique: true

    # $ rails generate migration add_password_digest_to_users password_digest:string
    add_column :users, :password_digest, :string

    # $ rails generate migration add_admin_to_users admin:boolean
    add_column :users, :admin, :boolean, default: false
  end
end
