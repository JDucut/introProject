class ClassSpellList < ApplicationRecord
  belongs_to :className
  belongs_to :spellName
end
