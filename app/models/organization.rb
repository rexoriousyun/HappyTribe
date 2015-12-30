class Organization < ActiveRecord::Base
	has_many :events
	belongs_to :event_coordinator, class_name: "User", foreign_key: "user_id"
end
