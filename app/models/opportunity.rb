class Opportunity < ActiveRecord::Base
	has_many :timeslots
	has_many :arrangements, through: :timeslots
  belongs_to :organization

  # Method to calculate start and end time goes below, these are placeholder ideas

  # def start_time
  # 	Timeslot.sort_by(:start_time :asc).first.start_time
  # end

  # def end_time
  # 	Timeslot.sort_by(:end_time :desc).first.end_time
  # end
end
