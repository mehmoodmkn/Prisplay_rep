class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :billboard_location
      t.string :time
      t.string :duration
      t.string :file
      t.timestamps null: false
    end
    add_reference :orders, :user, index: true
    add_foreign_key :orders, :users
  end
end
