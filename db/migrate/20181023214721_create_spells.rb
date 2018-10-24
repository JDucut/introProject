class CreateSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :spells do |t|
      t.string :name
      t.string :concentration
      t.string :description
      t.string :range
      t.string :components
      t.string :duration
      t.string :castingTime
      t.string :level
      t.references :school, foreign_key: true

      t.timestamps
    end
  end
end
