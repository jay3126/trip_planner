# == Schema Information
#
# Table name: planners
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  organization_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class PlannerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
