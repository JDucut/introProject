class RemoveAdventurerClassFromSpellLists < ActiveRecord::Migration[5.2]
  def change
    remove_reference :class_spell_lists, :adventurerClass, foreign_key: true
  end
end
