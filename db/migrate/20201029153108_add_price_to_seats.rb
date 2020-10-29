class AddPriceToSeats < ActiveRecord::Migration[5.2]
  def change
    add_column :seats, :price, :integer
  end
end
