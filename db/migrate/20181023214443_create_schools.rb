class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.string :schoolName
      t.string :description

      t.timestamps
    end
  end
end
