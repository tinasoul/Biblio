class Library < ActiveRecord::Base
  attr_accessible :title, :author_first_name, :author_last_name; :ISBN, :rating, :review
end
