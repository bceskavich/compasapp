class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.time :time
      t.date :date
      t.string :ticket_info
      t.string :description

      t.timestamps
    end
  end
end
