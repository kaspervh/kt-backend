class Unit < ApplicationRecord
	belongs_to :faction
	has_many :armourys
	has_many :special_rules
	has_many :weapon_options
end
