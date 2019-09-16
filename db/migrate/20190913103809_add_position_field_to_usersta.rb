class AddPositionFieldToUsersta < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :position, :string
  end
end
