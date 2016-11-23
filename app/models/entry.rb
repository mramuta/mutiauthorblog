class Entry < ActiveRecord::Base
  belongs_to :author, class_name: :User
  has_many :taggings
  has_many :comments
end
