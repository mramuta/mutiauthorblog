class Comment < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :entry
  belongs_to :comment, foreign_key: :parent_comment_id
  belongs_to :author, class_name: :User
  has_many :comments, foreign_key: :parent_comment_id
end
