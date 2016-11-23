class CreateEntriesTable < ActiveRecord::Migration
  def change
  	create_table :entries do |t|
  		t.string :body
  		t.integer :author_id
  	end
  end
end
