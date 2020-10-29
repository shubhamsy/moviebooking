class AddRowIdToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :row_id, :integer
  end
end
