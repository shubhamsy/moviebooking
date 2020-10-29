class CreateRows < ActiveRecord::Migration[5.2]
  def change
    create_table :rows do |t|
      t.integer :row_number
      t.integer :seat_id

      t.timestamps
    end
  end
end
