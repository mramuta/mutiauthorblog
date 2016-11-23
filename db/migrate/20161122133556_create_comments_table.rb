class CreateCommentsTable < ActiveRecord::Migration
  def change
  	create_table :comments do |t|
  		t.string :body
  		t.integer :entry_id
  		t.integer :parent_comment_id
      t.integer :author_id
      t.timestamps
  	end
  end
end
