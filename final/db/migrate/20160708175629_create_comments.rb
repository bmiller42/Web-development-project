class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :str
      t.integer :item_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
