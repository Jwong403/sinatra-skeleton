class CreateTables < ActiveRecord::Migration

  def change
    
    create_table :movie do |t|
      t.string :title 
      t.string :genre
      t.datetime :release_date
      t.timestamps
    end

    create_table :reviews do |t|
      t.string :rating
      t.string :metascore
      t.string :reviews
      t.string :critic
      t.string :comments
      t.timestamps
    end
    belongs_to :user
    has_many :reviews   
  end
end