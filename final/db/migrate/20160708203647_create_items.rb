class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :filename
      t.string :name
      t.string :item_type
      t.integer :owner_id
      t.boolean :on_sale
      t.integer :purchased
      t.integer :stock
      t.string :specs
      t.integer :price
      t.references :comment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
