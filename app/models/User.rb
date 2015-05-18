class User < ActiveRecord::Base
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.timestamps
    end
    has_many :movies
    has_many :reviews
    end

  end
end