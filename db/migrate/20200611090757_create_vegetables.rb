class CreateVegetables < ActiveRecord::Migration[6.0]
  def change
    create_table :vegetables do |t|
      t.string :specie
      t.string :variety
      t.text :description
      t.date :seed_start
      t.date :seed_end
      t.time :seed_period
      t.text :seed_description
      t.date :plant_start
      t.date :plant_end
      t.time :plant_period
      t.text :plant_description
      t.date :harvest_start
      t.date :harvest_end
      t.time :harvest_period
      t.text :harvest_description
      t.integer :raw_space
      t.integer :line_space
      t.text :friends
      t.text :enemies

      t.timestamps
    end
  end
end
