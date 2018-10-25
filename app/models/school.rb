class School < ApplicationRecord
	has_many :spells

	validation :schoolName, presense: true
	validation :description, presense: true
end
