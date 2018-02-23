# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
trip_1 = Trip.create!(name: "obt", start_date: "1/1/2018", end_date: "1/3/2018")
trip_2 = Trip.create!(name: "john", start_date: "2/2/2018", end_date: "2/6/2018")

Trail.create!(name: "obt trail", length: "10m", address: "111", trip: trip_1 )
Trail.create!(name: "obt trail", length: "20m", address: "1122", trip: trip_1)
Trail.create!(name: "john trail", length: "20m", address: "222", trip: trip_2)
Trail.create!(name: "john trail", length: "30m", address: "22211", trip: trip_2)