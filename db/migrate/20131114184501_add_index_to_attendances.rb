class AddIndexToAttendances < ActiveRecord::Migration
  def change
  end
  add_index :attendances, :attended_event_id
  add_index :attendances, :attendee_id
  add_index :attendances, [:attended_event_id, :attendee_id], :unique => true
end
