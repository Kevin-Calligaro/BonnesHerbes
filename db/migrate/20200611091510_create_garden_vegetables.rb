class CreateGardenVegetables < ActiveRecord::Migration[6.0]
  def change
    create_table :garden_vegetables do |t|
      t.references :row, null: false, foreign_key: true
      t.references :vegetable, null: false, foreign_key: true

      t.timestamps
    end
  end
end
