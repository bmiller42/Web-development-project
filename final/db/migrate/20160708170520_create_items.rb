class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :filename
      t.integer :price
      t.string :name
      t.integer :stock
      t.string :specs
      t.integer :purchased
      t.boolean :on_sale
      t.integer :owner_id
      t.string :item_type

      t.timestamps null: false
    end
  end
end
