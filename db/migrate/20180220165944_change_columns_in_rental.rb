class ChangeColumnsInRental < ActiveRecord::Migration[5.1]
  def change
    change_column_null :rentals, :checkin, false
    change_column_null :rentals, :checkout, false
  end
end
