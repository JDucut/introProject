class AdventurerClass < ApplicationRecord
	has_many :class_spell_lists
	has_many :spells, through: :class_spell_lists
end
