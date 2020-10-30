class AddCustomerIdToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :customer_id, :integer
  end
end
