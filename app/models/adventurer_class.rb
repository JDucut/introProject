class AdventurerClass < ApplicationRecord
	has_many :class_spell_lists
	has_many :spells, through: :class_spell_lists

	validates :name, presence: true
	validates :description, presence: true
end
