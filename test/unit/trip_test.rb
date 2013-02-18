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

require 'test_helper'

class TripTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
