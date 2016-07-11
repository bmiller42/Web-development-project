class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :user_id

      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end