class Book < ActiveRecord::Base
  attr_accessible :author_first_name, :author_last_name, :isbn, :rating, :review, :title, :picture

  mount_uploader :picture, PictureUploader
end
