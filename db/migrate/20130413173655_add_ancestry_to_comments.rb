class AddAncestryToComments < ActiveRecord::Migration
  def change
    add_column :comments, :ancestry, :string
    add_index :comments, :ancestry
  end

  def remove
  	remove_column :comments, :ancestry
    remove_index :comments, :ancestry

  end

end
