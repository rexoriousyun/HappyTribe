class Timeslot < ActiveRecord::Base
  has_many :arrangements
  belongs_to :opportunity
end
