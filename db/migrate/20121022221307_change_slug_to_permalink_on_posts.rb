class ChangeSlugToPermalinkOnPosts < ActiveRecord::Migration
  def up
    rename_column :posts, :slug, :permalink  
    add_index :posts, :permalink
  end

  def down
    rename_column :posts, :permalink, :slug 
    remove_index :posts, :permalink
  end
end
