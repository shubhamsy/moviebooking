class Seat < ApplicationRecord
	belongs_to :screen
	has_one :ticket
end
