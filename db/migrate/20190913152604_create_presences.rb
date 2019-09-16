class CreatePresences < ActiveRecord::Migration[5.1]
  def change
    create_table :presences do |t|
      t.datetime :date
      t.datetime :hour_in
      t.integer :user_id
      t.datetime :start_hour

      t.timestamps
    end
  end
end
