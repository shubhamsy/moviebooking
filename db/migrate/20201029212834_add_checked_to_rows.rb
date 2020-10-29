class AddCheckedToRows < ActiveRecord::Migration[5.2]
  def change
    add_column :rows, :checked, :boolean
  end
end
