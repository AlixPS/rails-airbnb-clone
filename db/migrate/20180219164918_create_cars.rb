class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.references :user, foreign_key: true
      t.string :brand
      t.string :model
      t.string :category

      t.timestamps
    end
  end
end
