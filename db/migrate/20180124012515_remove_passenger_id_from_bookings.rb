class RemovePassengerIdFromBookings < ActiveRecord::Migration[5.1]
  def change
  	remove_column :bookings, :passenger_id
  end
end
