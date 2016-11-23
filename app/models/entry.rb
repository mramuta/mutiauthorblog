class Entry < ActiveRecord::Base
  belongs_to :author, class_name: :user
  has_many :taggings
  has_many :comments
end
