class CreateSeats < ActiveRecord::Migration[5.2]
  def change
    create_table :seats do |t|
      t.string :seat_name
      t.boolean :checked
      t.integer :row_number

      t.timestamps
    end
  end
end
