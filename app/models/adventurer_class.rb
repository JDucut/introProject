class AdventurerClass < ApplicationRecord
	has_many :classSpellLists
	has_many :spells, through: :classSpellLists
end
