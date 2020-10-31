class RemoveShowIdFromScreens < ActiveRecord::Migration[5.2]
  def change
    remove_column :screens, :show_id, :integer
  end
end
