class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string   :car_name
      t.string   :image
      t.string   :driver_name, null: false, default: 'Available'
      t.decimal  :price
      t.boolean  :booked, null: false, default: false
      t.timestamps
    end
  end
end
