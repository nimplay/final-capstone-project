class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.integer :year
      t.string :image
      t.float :daily_price
      t.string :color
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
