class Organization < ActiveRecord::Base
  attr_accessible :address, :name

  has_many :planners
end
