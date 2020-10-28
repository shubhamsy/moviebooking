class AddScreenIdToSeats < ActiveRecord::Migration[5.2]
  def change
    add_column :seats, :screen_id, :integer
  end
end
