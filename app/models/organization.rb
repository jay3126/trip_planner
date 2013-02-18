# == Schema Information
#
# Table name: organizations
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  address    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Organization < ActiveRecord::Base
  attr_accessible :address, :name

  has_many :planners

  validates :name, :presence => true, :uniqueness => true
end
