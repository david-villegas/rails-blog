class Post < ApplicationRecord
  # has_one_attached :cover_photo
  has_rich_text :body
end
