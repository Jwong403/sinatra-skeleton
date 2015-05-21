class AddForeignKeys < ActiveRecord::Migration
    def change
        change_table :movies do |t|
            t.references :user
        end
        change_table :user_reviews do |t|
            t.references :user
            t.references :movie
            t.string :name
            t.integer :number_of_reviews
            t.datetime :reviewed_on
        end
    end    
end