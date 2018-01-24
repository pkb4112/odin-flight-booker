# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

airport_list = [
["ATL", "Atlanta"],
["ORD", "Chicago"],
["LAX", "Los Angeles"],
["DFW", "Dallas"],
["JFK", "New York City"],
["DEN", "Denver"],
["LAS", "Las Vegas"]
]

airport_list.each do |code, location|
	Airport.create(code: code, location: location)
end


flight_list = [
[1,2,DateTime.new(2018,11,19,8,30),DateTime.new(2018,11,19,15,30)],
[3,4,DateTime.new(2018,11,19,4,30),DateTime.new(2018,11,19,17,30)],
[5,2,DateTime.new(2018,11,19,3,30),DateTime.new(2018,11,19,18,30)],
[4,2,DateTime.new(2018,11,19,2,30),DateTime.new(2018,11,19,19,30)],
[4,3,DateTime.new(2018,11,19,1,30),DateTime.new(2018,11,19,20,30)],
[1,6,DateTime.new(2018,11,19,12,30),DateTime.new(2018,11,19,21,30)],
[7,2,DateTime.new(2018,11,19,9,30),DateTime.new(2018,11,19,22,30)],

]

flight_list.each do |departure_id, arrival_id, departure_date, arrival_date|
  Flight.create(departure_port_id: departure_id, arrival_port_id: arrival_id, 
  	            departure_date: departure_date, arrival_date: arrival_date)
end
