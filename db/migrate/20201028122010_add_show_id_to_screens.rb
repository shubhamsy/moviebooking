class AddShowIdToScreens < ActiveRecord::Migration[5.2]
  def change
    add_column :screens, :show_id, :integer
  end
end
