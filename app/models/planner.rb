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

class Planner < ActiveRecord::Base
  attr_accessible :email, :name

  has_many :trips
  belongs_to :organization

  validates :name, :presence => true, :uniqueness => true
  validates :email, :presence => true, :uniqueness => true
end
