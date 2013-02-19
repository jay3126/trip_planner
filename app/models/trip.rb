# == Schema Information
#
# Table name: trips
#
#  id          :integer          not null, primary key
#  code        :integer
#  tour_name   :string(255)
#  start_date  :date
#  end_date    :date
#  organizer   :string(255)
#  destination :string(255)
#  trip_type   :string(255)
#  trip_status :string(255)
#  planner_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Trip < ActiveRecord::Base
  attr_accessible :code, :destination, :end_date, :organizer, :start_date, :tour_name, :trip_status, :trip_type

  belongs_to :planner

  def trip_duration(start_date = Date.today, end_date = Date.today)
    duration = end_date - start_date
    return duration
  end
end
