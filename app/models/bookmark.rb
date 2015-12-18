class Bookmark < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  validate :bookmarked_already?

  def bookmarked_already?
		if Bookmark.where(user_id: self.user_id).where(event_id: self.event_id).present?
  		errors.add(:user_id, "has already bookmarked this event")
  	end
  end
end
