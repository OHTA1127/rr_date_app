class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :post_image
  has_many :post_comments, dependent: :destroy
end
