class AddApprovedToUserupdate < ActiveRecord::Migration
  def change
    remove_column :users, :approved
    add_column :users, :approved, :boolean, :default => false, :null => false
  end
end
