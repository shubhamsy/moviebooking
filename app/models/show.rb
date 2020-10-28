class Show < ApplicationRecord
  belongs_to :movie
  has_many :screens, :foreign_key => :show_id, class_name: "Screen"    
end
