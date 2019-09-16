class AddNewFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :company_id, :integer
  	add_column :users, :department_id, :integer
  	add_column :users, :dob, :date
  	add_column :users, :address, :string
  	add_column :users, :start_date, :date
  	add_column :users, :end_date, :date
  	add_column :users, :holiday, :integer
  	add_column :users, :sick_days, :integer
  	add_column :users, :eveniment, :integer
  end
end
