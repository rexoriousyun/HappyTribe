class Skill < ActiveRecord::Base
	has_and_belongs_to_many :users
	has_and_belongs_to_many :events

	def self.sort_by_popularity
	end
end
