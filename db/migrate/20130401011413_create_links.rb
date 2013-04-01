class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :user_id
      t.string :url
      t.string :title
      t.string :comment

      t.timestamps
    end
    add_index :links, :user_id
    add_index :links, :title
  end
end
