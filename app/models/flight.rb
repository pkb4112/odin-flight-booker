class Flight < ApplicationRecord
	before_create :set_duration

	
	#Airport the plane is departing from
	belongs_to :departure_port, class_name: "Airport"
	#Airport the plane is arriving into 
	belongs_to :arrival_port, class_name: "Airport"







    private

    def set_duration
    	flight_duration = (self.arrival_date - self.departure_date) 
    	self.duration = flight_duration
    end

   

end
