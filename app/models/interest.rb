class Interest < ActiveRecord::Base
	has_and_belongs_to_many :users
	has_and_belongs_to_many :events


	def self.sort_by_popularity(list_length)
		popularity_array = []
		Interest.all.each do |interest|
			break if popularity_array.size == list_length
			popularity_array << {interest: interest, users: interest.users.count}
		end
		sorted_array = (popularity_array.sort_by { |interest| interest[:users] }).reverse
		return sorted_array
	end
end
