class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string   :model_name
      t.string   :picture
      t.string   :driver_name
      t.decimal  :price
      t.boolean  :booked
      
      t.timestamps
    end
  end
end
