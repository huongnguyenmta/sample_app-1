class Post < ApplicationRecord
  self.per_page = 10

  belongs_to :creator,
    class_name: User.name, foreign_key: :user_id

  mount_uploader :image_url, PictureUploader
end
