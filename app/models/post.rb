class Post < ActiveRecord::Base
  belongs_to :user
  has_many :favourites, dependent: :destroy
  has_many :comments, dependent: :destroy
end
