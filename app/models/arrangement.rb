class Arrangement < ActiveRecord::Base
  belongs_to :user
  belongs_to :timeslot
  has_one :opportunity, through: :timeslot
end
