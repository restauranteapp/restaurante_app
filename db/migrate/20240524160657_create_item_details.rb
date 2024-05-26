class CreateItemDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :item_details do |t|
      t.references :item, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true
      t.integer :quantity
      t.integer :total

      t.timestamps
    end
  end
end
