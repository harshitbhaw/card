class AddUserToDebit < ActiveRecord::Migration[5.2]
  def change
    add_reference :debits, :user, foreign_key: true
  end
end
