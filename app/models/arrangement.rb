class Arrangement < ActiveRecord::Base
  belongs_to :user
  belongs_to :timeslot
  has_one :event, through: :timeslot
  validate :already_booked?

  def already_booked?
  	if current_user.arrangements.include?(self)
    # Arrangement.where(user_id: self.user_id).where(timeslot_id: self.timeslot_id).present?
  		errors.add(:user_id, "has already booked for this timeslot")
  	end
  end
  def current_user
    User.find(self.user_id)
  end
end
