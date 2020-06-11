class CreateRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :relationships do |t|
      t.string :status
      t.references :vegetable1
      t.references :vegetable2

      t.timestamps
    end
  end
end
