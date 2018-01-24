class FlightsController < ApplicationController

	def index
		@airports = Airport.all.map{|port| [port.code, port.id]}
		@departure_dates = Flight.distinct.pluck('date(departure_date)')
		@departure_dates = @departure_dates.map{|date| [date.to_date.strftime("%m/%d/%Y"), date.to_date]}
        @potential_flights = Flight.where(["departure_port_id = ? and arrival_port_id = ? and DATE(departure_date) = ?", params[:departure_port], params[:arrival_port], params[:departure_date]])
        @num_pass = params[:num_pass]
	end

	
end
