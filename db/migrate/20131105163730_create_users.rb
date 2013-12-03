class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :state
      t.string :country
      t.string :school
      t.string :password

      t.timestamps
    end
  end
end
