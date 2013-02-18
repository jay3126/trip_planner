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

  before_save {|user| user.email == email.downcase}
  has_many :trips
  belongs_to :organization

  validates :name, :presence => true, :uniqueness => true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: {case_sensitive: false}
end
