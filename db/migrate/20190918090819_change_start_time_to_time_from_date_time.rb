class ChangeStartTimeToTimeFromDateTime < ActiveRecord::Migration[5.1]
  def change
  	remove_column :users, :start_hour
  	add_column :users, :start_hour, :time
  	remove_column :presences, :hour_in
  	add_column :presences, :hour_in, :time
  end
end
