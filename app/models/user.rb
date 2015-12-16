class User < ActiveRecord::Base
  authenticates_with_sorcery!
	has_many :arrangements
	has_many :timeslots, through: :arrangements
	has_many :arranged_events, through: :timeslots, source: :event, class_name: "Event"

	validates :password, length: { minimum: 3 }
	validates :password, confirmation: true
	validates :password_confirmation, presence: true

	validates :email, uniqueness: true

end
