class AddHolydaySickEvenimentTakenFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :holiday_taken, :integer
    add_column :users, :sick_days_taken, :integer
    add_column :users, :eveniment_taken, :integer
  end
end
