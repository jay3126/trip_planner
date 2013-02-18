class Organization < ActiveRecord::Base
  attr_accessible :address, :name

  has_many :planners

  validates :name, :presence => true, :uniqueness => true
end
