class Ticket < ApplicationRecord
	belongs_to :user
	belongs_to :seat
	validates :user_id, uniqueness: { scope: [ :show_id,:movie_id,:screen_id,:created_at]}
end
