class CreateReferences < ActiveRecord::Migration
    def change
        create_table :references do |t|
            t.text :URL
            t.string :topic
            t.string :annotation
            t.datetime :datetime
            t.timestamps
        end
    end
end
