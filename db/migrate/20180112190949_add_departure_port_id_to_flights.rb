class AddDeparturePortIdToFlights < ActiveRecord::Migration[5.1]
  def change
    add_column :flights, :departure_port_id, :integer
  end
end
