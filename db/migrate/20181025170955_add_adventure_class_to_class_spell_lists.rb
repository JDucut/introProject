class AddAdventureClassToClassSpellLists < ActiveRecord::Migration[5.2]
  def change
    add_reference :class_spell_lists, :adventurer_class, foreign_key: true
  end
end
