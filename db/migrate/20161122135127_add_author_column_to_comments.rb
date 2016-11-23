class AddAuthorColumnToComments < ActiveRecord::Migration
  def change
  	add_column :comments,:author_id,:integer
  end
end
