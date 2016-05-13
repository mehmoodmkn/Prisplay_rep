class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :duration
      t.timestamps :starting_date
      t.timestamps :ending_date
      t.timestamps null: false
    end
  end
end
