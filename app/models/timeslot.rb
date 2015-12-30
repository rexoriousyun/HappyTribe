class Timeslot < ActiveRecord::Base
  has_many :arrangements, dependent: :destroy
  belongs_to :event

  def remaining_spots
  	self.capacity - self.arrangements.count
  end

  def starts_at
  	self.start_time.localtime.strftime("%l:%M%P")
  end

  def ends_at
  	self.end_time.localtime.strftime("%l:%M%P")
  end
end
