class CreateRentals < ActiveRecord::Migration[5.1]
  def change
    create_table :rentals do |t|
      t.references :car, foreign_key: true
      t.references :user, foreign_key: true
      t.date :checkin
      t.date :checkout
      t.boolean :accepted

      t.timestamps
    end
  end
end
