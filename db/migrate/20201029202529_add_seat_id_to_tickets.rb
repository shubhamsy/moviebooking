class AddSeatIdToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :seat_id, :integer
  end
end
