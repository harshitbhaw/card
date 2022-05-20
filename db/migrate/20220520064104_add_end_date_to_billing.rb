class AddEndDateToBilling < ActiveRecord::Migration[5.2]
  def change
    add_column :billings, :end_date, :date
  end
end
