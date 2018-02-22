class UpdateRentals < ActiveRecord::Migration[5.1]
  def change
    change_column :rentals, :checkin, :datetime
    change_column :rentals, :checkout, :datetime
  end
end
