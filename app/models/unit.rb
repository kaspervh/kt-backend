class Unit < ApplicationRecord
	belongs_to :faction
	has_many :armourys
	has_many :special_rules
	has_many :weapon_options

	def build_unit_hashes(units)
		units.each do |unit|
			unit = unit.to_sym
			unit.push(unit.weapon_options.to_sym)
		end
	end
end
