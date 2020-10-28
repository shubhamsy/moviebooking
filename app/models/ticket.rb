class Ticket < ApplicationRecord
	belongs_to :seat
	belongs_to :user
end
