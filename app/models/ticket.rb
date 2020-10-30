class Ticket < ApplicationRecord
	serialize :seats, JSON
	serialize :rows, JSON		
	validates :customer_id, uniqueness: { scope: [ :show_id,:movie_id,:screen_id,:seat_id,:row_id]}
end
