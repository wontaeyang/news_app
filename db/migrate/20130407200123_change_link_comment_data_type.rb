class ChangeLinkCommentDataType < ActiveRecord::Migration
  def up
  	change_table :links do |t|
  		t.change :comment, :text
  	end

  end

  def down
  	change_table :links do |t|
  		t.change :comment, :string
  	end
  end
end
