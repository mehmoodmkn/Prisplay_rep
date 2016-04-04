class CreateAssignedTasks < ActiveRecord::Migration
  def change
    create_table :assigned_tasks do |t|

      t.timestamps null: false
    end
  end
end
