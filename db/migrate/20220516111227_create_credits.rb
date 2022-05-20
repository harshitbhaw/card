class CreateCredits < ActiveRecord::Migration[5.2]
  def change
    create_table :credits do |t|
      t.string :name
      t.integer :card_number
      t.integer :cvc
      t.date :start_Date
      t.date :end_date

      t.timestamps
    end
  end
end
