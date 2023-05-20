class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.integer :quantity
      t.integer :price
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
