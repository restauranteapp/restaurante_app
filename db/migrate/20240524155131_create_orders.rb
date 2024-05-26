class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.string :total_amount
      t.integer :status

      t.timestamps
    end
  end
end
