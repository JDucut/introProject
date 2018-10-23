class CreateAdventurerClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :adventurer_classes do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
