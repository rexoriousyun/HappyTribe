class Arrangement < ActiveRecord::Base
  belongs_to :user
  belongs_to :timeslot
  has_one :event, through: :timeslot
  validate :already_booked?
  validate :max_capacity?

  def already_booked?
  	if Arrangement.where(user_id: self.user_id).where(timeslot_id: self.timeslot_id).present?
  		errors.add(:user_id, "has already booked for this timeslot.")
  	end
  end

  def max_capacity?
    if self.timeslot.remaining_spots == 0
      errors.add(:timeslot_id, "Capacity has been reached for the timeslot you are trying to book")
    end
  end

end
