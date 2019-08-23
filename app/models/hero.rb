class Hero < ApplicationRecord

    belongs_to :weapon
    has_many :hero_attributes
    has_many :powers, through: :hero_attributes

    validates :name, presence: { message: "Declare your name!" }

    accepts_nested_attributes_for :powers

end
  