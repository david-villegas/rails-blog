class Post < ApplicationRecord
  validates :title, :body, presence: true
  # has_one_attached :cover_photo
  has_rich_text :body
end
