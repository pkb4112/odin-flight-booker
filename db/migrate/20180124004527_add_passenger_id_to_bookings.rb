class AddPassengerIdToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :passenger_id, :integer
  end
end
