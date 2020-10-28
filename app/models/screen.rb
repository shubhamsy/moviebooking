class Screen < ApplicationRecord
	belongs_to :show
	has_many :seats, :foreign_key => :screen_id, class_name: "Seat"
end
