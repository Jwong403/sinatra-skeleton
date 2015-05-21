class User < ActiveRecord::Base
  def change
    has_many :movies
    has_many :reviews
  end
end