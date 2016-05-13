class CreatePayrolls < ActiveRecord::Migration
  def change
    create_table :payrolls do |t|
      t.string :amount
      t.string :bonus
      t.string :salary_month
      t.string :salary_year
      t.string :payment_method
      t.timestamps null: false
    end
  end
end
