class Book < ActiveRecord::Base
  attr_accessible :author_first_name, :author_last_name, :isbn, :rating, :review, :title, :picture

  # before_create do
    
  # end

  mount_uploader :picture, PictureUploader
end
