class RemoveRowNumberFromSeats < ActiveRecord::Migration[5.2]
  def change
    remove_column :seats, :row_number, :integer
  end
end
