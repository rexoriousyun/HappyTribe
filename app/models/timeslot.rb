class Timeslot < ActiveRecord::Base
  has_many :arrangements
  belongs_to :opportunity

  def remaining_spots
  	self.capacity - self.arrangements.count
  end

  def starts_at
  	self.start_time.strftime("%I:%M%P")
  end

  def ends_at
  	self.end_time.strftime("%I:%M%P")
  end
end
