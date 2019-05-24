class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.integer :user_id
      t.string :bike_network_id
      t.integer :times_used
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
