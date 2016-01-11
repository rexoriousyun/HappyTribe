class Bookmark < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  validate :bookmark_exists_validation

  def bookmark_exists_validation
    if self.bookmarked_already?(self.user, self.event)
      errors.add(:user_id, "has already bookmarked this event")
  	end
  end

  def bookmarked_already?(user, event)
    Bookmark.where(user_id: user.id).where(event_id: event.id).present?
  end
end
