class Opportunity < ActiveRecord::Base
	has_many :timeslots
	has_many :arrangements, through: :timeslots
  belongs_to :organization
end
