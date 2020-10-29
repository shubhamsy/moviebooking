class Movie < ApplicationRecord	
	  has_many :shows
	  has_many :screens, :through => :shows
end
