class Planner < ActiveRecord::Base
  attr_accessible :email, :name

  has_many :trips
  belongs_to :organization
end
