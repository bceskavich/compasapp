class AddFbUriToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :fb_uri, :string
  end
end
