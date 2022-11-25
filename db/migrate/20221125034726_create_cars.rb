class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string   :model_name
      t.string   :picture
      t.string   :driver_name
      t.int      :price
      t.boolean  :booked
      t.references :booking, null: false, foreign_key: true, on_delete: :cascade

      t.timestamps
    end
  end
end
