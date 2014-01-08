class AddFbUriToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fb_uri, :string
  end
end
