class Skill < ActiveRecord::Base
	has_and_belongs_to_many :users
	has_and_belongs_to_many :events

	def self.sort_by_popularity(list_length)
		popularity_array = []
		Skill.all.each do |skill|
			break if popularity_array.size == list_length
			popularity_array << {skill: skill, users: skill.users.count}
		end
		sorted_array = (popularity_array.sort_by { |skill| skill[:users] }).reverse
	end
end
