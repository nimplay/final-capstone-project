class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.datetime :date
      t.datetime :date_return
      t.string :city
      t.references :user, null: false, foreign_key: true, on_delete: :cascade
      t.references :car, null: false, foreign_key: true, on_delete: :cascade
      t.timestamps
    end
  end
end
