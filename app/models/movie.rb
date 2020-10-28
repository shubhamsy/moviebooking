class Movie < ApplicationRecord
  has_many :shows, :foreign_key => :movie_id, class_name: "Show"
end
