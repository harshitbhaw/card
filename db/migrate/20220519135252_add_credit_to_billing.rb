class AddCreditToBilling < ActiveRecord::Migration[5.2]
  def change
    add_reference :billings, :credit, foreign_key: true
  end
end
