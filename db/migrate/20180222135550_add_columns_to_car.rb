class AddColumnsToCar < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :places, :integer
    add_column :cars, :moteur, :string
    add_column :cars, :boite, :string
    add_column :cars, :portes, :integer
  end
end
