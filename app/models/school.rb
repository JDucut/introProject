class School < ApplicationRecord
	has_many :spells

	validates :schoolName, presence: true
	validates :description, presence: true
end
