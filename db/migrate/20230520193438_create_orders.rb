class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :date
      t.integer :price
      t.references :item, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
