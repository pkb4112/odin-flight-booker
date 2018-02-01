class PassengerMailer < ApplicationMailer
	default from: 'example@example.com'

	def passenger_email(passenger)
		@passenger = passenger
		mail(to: @passenger.email, subject: "Booking Receipt")
	end
end
