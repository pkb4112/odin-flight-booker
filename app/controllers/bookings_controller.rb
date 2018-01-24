class BookingsController < ApplicationController

	
	def new
	  @flight = Flight.find_by(id: params[:flight_id])
	  @booking = Booking.new
	  num_pass = params[:num_pass].to_i
	  @passenger_list ||= [] 
	  num_pass.times do |x|
	  	@passenger_list[x] = Passenger.new
	  end
	end

	def create
	  @booking = Booking.new(booking_params)

	  if @booking.save
      	redirect_to @booking
      else
      	render 'new'
      end
	end

	def show
		@booking = Booking.find_by(id: params[:id])
	end


private
  def booking_params 
  	params.require(:booking).permit(:flight_id, :passengers_attributes => [:name, :email])
  end


end
