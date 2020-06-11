class CreateRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :relationships do |t|
      t.string :status
      t.references :vegetable1, null: false, foreign_key: true
      t.references :vegetable2, null: false, foreign_key: true

      t.timestamps
    end
  end
end
