class Opportunity < ActiveRecord::Base
	has_many :timeslots
	has_many :arrangements, through: :timeslots
  belongs_to :organization

  def start_time
  		self.timeslots.order(start_time: :asc).first.start_time
  end

  def end_time
  	self.timeslots.order(end_time: :asc).last.end_time
  end
end
