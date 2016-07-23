class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :votes, dependent: :destroy

  has_many :post_tags
  has_many :tags, through: :post_tags

  belongs_to :user
  paginates_per 5
end
