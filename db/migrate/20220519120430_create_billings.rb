class CreateBillings < ActiveRecord::Migration[5.2]
  def change
    create_table :billings do |t|
      t.integer :card_number
      t.integer :cvc
      t.integer :postal_code
      t.date :valid_thru
      t.integer :total_amount
      t.integer :amount_paid
      t.integer :due_amount

      t.timestamps
    end
  end
end
