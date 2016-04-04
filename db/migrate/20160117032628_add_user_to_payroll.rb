class AddUserToPayroll < ActiveRecord::Migration
  def change
    add_reference :payrolls, :user, index: true
    add_foreign_key :payrolls, :users
  end
end
