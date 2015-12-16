class Timeslot < ActiveRecord::Base
  has_many :arrangements
  belongs_to :opportunity

  def remaining_spots
  	self.capacity - self.arrangements.count
  end
end
