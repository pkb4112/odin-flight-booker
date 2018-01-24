class RemoveArrivalPortFromFlights < ActiveRecord::Migration[5.1]
  def change
    remove_column :flights, :arrival_port, :integer
  end
end
