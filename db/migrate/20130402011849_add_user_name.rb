class AddUserName < ActiveRecord::Migration
  def up
  	add_column :users, :name, :string
  	add_column :users, :role, :integer, :default => '2'
  	add_index :users, :name
  	add_index :users, :role
  end

  def down
  	remove_column :users, :name
  	remove_column :users, :role
  	remove_index :users, :name
  	remove_index :users, :role
  end
end
