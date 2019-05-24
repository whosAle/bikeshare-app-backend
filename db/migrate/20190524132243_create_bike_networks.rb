class CreateBikeNetworks < ActiveRecord::Migration[5.2]
  def change
    create_table :bike_networks do |t|
      t.string :location
      t.string :name
      t.string :company
      t.integer :num_of_stations
      t.integer :free_bikes

      t.timestamps
    end
  end
end
