class AddArrivalPortIdToFlights < ActiveRecord::Migration[5.1]
  def change
    add_column :flights, :arrival_port_id, :integer
  end
end
