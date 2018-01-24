class RemoveDeparturePortFromFlights < ActiveRecord::Migration[5.1]
  def change
    remove_column :flights, :departure_port, :integer
  end
end
