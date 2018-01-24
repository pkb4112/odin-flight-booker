class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.integer :departure_port
      t.integer :arrival_port
      t.datetime :departure_date
      t.datetime :arrival_date
      t.time :duration

      t.timestamps
    end
  end
end
