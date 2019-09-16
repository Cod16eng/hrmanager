class AddStartHourToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :start_hour, :datetime
  end
end
