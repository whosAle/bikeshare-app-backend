# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Boos")
User.create(name: "Andro 3000")

BikeNetwork.create(location: "New York City", name:"City Cycles", company:"sycle-group", num_of_stations: 4, free_bikes: 0)

Trip.create(user_id: 1, bike_network_id: 1, times_used: 3, start_time: Time.new, end_time: Time.new)
Trip.create(user_id: 2, bike_network_id: 1, times_used: 3, start_time: Time.new, end_time: Time.new)
