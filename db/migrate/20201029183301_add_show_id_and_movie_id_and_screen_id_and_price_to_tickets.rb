class AddShowIdAndMovieIdAndScreenIdAndPriceToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :show_id, :integer
    add_column :tickets, :movie_id, :integer
    add_column :tickets, :screen_id, :integer
    add_column :tickets, :price, :integer
  end
end
