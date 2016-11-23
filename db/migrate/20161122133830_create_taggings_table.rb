class CreateTaggingsTable < ActiveRecord::Migration
  def change
  	create_table :taggings do |t|
  		t.integer :entry_id
  		t.integer :tag_id
  	end
  end
end
