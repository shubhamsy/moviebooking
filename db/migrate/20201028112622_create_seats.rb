class CreateSeats < ActiveRecord::Migration[5.2]
  def change
    create_table :seats do |t|
      t.integer :seat_numer
      t.boolean :status
      t.integer :price

      t.timestamps
    end
  end
end
