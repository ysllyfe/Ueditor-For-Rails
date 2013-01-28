class AddImages < ActiveRecord::Migration
  def self.up
  	create_table :images do |t|
  		t.column :avatar_file_name,'CHAR(50) NOT NULL'
  		t.column :avatar_content_type,'CHAR(15) NOT NULL'
  		t.column :avatar_file_size,'INT(8) NOT NULL DEFAULT 0'
  		t.column :avatar_updated_at,'DATETIME'
  	end
  end

  def self.down
  end
end
