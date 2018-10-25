class Spell < ApplicationRecord
	belongs_to :school
	has_many :classSpellLists
	has_many :adventurerClasses, through: :classSpellLists
end
