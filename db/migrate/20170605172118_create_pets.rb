class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.string :species
      t.string :breed
      t.string :name
      t.string :image
      t.date :bornOn
      t.string :gender
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
