class CreateTables < ActiveRecord::Migration

  def change
    create_table :Users do |t|
      t.string :name
      t.string :email
      t.string :username
      t.string :password
      t.string :age
      t.string :gender
      t.string :city
      t.boolean :active
      t.timestamps
    end

    create_table :Movies do |t|
      t.string :name
      t.string :date
      t.date :year_released
      t.string :esrb_rating
      t.string :run_time
      t.string :genre
      t.datetime :release_date
      t.text :summary
      t.string :director
      t.string :writers
      t.string :stars
      t.timestamps
    end
    
    create_table :user_reviews do |t|
      t.string :your_rating
      t.string :rating
      t.string :reviews
    end
  end
end