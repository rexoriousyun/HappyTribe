class Opportunity < ActiveRecord::Base
	has_many :arrangements
  belongs_to :organization

  geocoded_by :location
  after_validation :geocode

end
