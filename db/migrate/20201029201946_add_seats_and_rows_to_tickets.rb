class AddSeatsAndRowsToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :seats, :text
    add_column :tickets, :rows, :text
  end
end
