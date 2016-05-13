class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :bank_branch_code
      t.string :bank_nam
      t.string :bank_address
      t.string :swift_code
      t.string :iban
      t.string :paypal_email_address
      t.timestamps null: false
    end
    add_reference :payments, :user, index: true
    add_foreign_key :payments, :users
  end
end
