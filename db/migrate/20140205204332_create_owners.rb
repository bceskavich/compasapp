class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :user_id
      t.string :organization_id

      t.timestamps
    end
  end
end
