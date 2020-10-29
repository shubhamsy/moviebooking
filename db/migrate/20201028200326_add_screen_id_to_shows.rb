class AddScreenIdToShows < ActiveRecord::Migration[5.2]
  def change
    add_column :shows, :screen_id, :integer
  end
end
