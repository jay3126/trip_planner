class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :code
      t.string :tour_name
      t.date :start_date
      t.date :end_date
      t.string :organizer
      t.string :destination
      t.string :trip_type
      t.string :trip_status
      t.integer :planner_id

      t.timestamps
    end
  end
end
