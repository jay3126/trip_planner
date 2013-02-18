class Trip < ActiveRecord::Base
  attr_accessible :code, :destination, :end_date, :organizer, :start_date, :tour_name, :trip_status, :trip_type

  belongs_to :planner
end
