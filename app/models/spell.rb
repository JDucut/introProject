class Spell < ApplicationRecord
	belongs_to :school
	has_many :class_spell_lists
	has_many :adventurer_classes, through: :class_spell_lists

	validates :name, presence: true
	validates :description, presence: true
end
