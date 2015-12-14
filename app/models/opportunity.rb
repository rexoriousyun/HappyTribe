class Opportunity < ActiveRecord::Base
	has_many :arrangements
  belongs_to :organization
end
