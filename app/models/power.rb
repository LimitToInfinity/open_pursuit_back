class Power < ApplicationRecord
    
    has_many :hero_attributes
    has_many :heros, through: :hero_attributes

end
  