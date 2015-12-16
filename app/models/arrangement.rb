class Arrangement < ActiveRecord::Base
  belongs_to :user
  belongs_to :timeslot
  has_one :event, through: :timeslot
end
