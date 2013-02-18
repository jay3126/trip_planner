class Planner < ActiveRecord::Base
  attr_accessible :email, :name

  has_many :trips
  belongs_to :organization

  validates :name, :presence => true, :uniqueness => true
  validates :email, :presence => true, :uniqueness => true
end
