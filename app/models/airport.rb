class Airport < ApplicationRecord

	has_many :arrival_flights, class_name: "Flight", foreign_key: "arrival_port_id"
	has_many :departure_flights, class_name: "Flight", foreign_key: "departure_port_id"


end
