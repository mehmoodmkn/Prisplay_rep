class AddFirstNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :dob, :string
    add_column :users, :gender, :string
    add_column :users, :nic, :string
    add_column :users, :ssn, :string
    add_column :users, :phone, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :designation, :string
    add_column :users, :country, :string
  end
end
