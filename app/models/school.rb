class School < ApplicationRecord
	has_many :spells

	validates :schoolName, presense: true
	validates :description, presense: true
end
