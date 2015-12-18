class User < ActiveRecord::Base
  authenticates_with_sorcery!
	has_many :arrangements
	has_many :timeslots, through: :arrangements
	has_many :arranged_events, through: :timeslots, source: :event, class_name: "Event"
	has_many :bookmarks
	has_many :bookmarked_events, through: :bookmarks, source: :event, class_name: "Event"
	has_and_belongs_to_many :interests
	has_and_belongs_to_many :skills


	validates :password, length: { minimum: 3 }
	validates :password, confirmation: true
	validates :password_confirmation, presence: true

	validates :email, uniqueness: true

	def has_interest?(interest)
		self.interests.include?(interest)
	end

	def has_skill?(skill)
		self.skills.include?(skill)
	end
end
