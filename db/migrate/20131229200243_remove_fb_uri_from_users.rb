class RemoveFbUriFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :fb_uri
  end

  def down
    add_column :users, :fb_uri, :string
  end
end
