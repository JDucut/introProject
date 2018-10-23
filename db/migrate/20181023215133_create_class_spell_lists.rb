class CreateClassSpellLists < ActiveRecord::Migration[5.2]
  def change
    create_table :class_spell_lists do |t|
      t.references :className, foreign_key: true
      t.references :spellName, foreign_key: true

      t.timestamps
    end
  end
end
