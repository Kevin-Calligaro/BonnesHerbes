class CreateSeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :seeds do |t|
      t.date :date
      t.boolean :done
      t.integer :quantity
      t.text :comment
      t.references :garden_vegetable, null: false, foreign_key: true

      t.timestamps
    end
  end
end
