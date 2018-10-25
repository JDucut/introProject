class ClassSpellList < ApplicationRecord
  belongs_to :adventurer_class
  belongs_to :spell

  validates :adventurer_class, presence: true
  validates :spell, presence: true
end
