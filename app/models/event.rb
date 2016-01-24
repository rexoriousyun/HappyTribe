class Event < ActiveRecord::Base
  mount_uploader :event_image, ImageUploader
	has_many :timeslots, dependent: :destroy
  accepts_nested_attributes_for :timeslots, reject_if: :all_blank, allow_destroy: true
	has_many :arrangements, through: :timeslots
  has_many :bookmarks, dependent: :destroy
  belongs_to :organization
  has_and_belongs_to_many :interests
  has_and_belongs_to_many :skills

  geocoded_by :location
  after_validation :geocode

  # Comments reference the method directly below the comment.
  # Some of the later methods have performance implications that may not scale.
  # I'd like to refactor to use more SQL statements in the future to improve performance.
  # Currently there are no validations as the act of event creation was lower priority in our
  # project plan.

  # ---

  # Finds event start time by checking start time of the earliest timeslot

  def start_time
  	self.timeslots.order(start_time: :asc).first.start_time.localtime
  end

  # finds event end time by checking end time of the latest time slot

  def end_time
  	self.timeslots.order(end_time: :asc).last.end_time.localtime
  end

  # returns a collection of only the events in the future

  def self.future
    joins(:timeslots).where("timeslots.start_time >= '#{Time.now}'").distinct
  end

  # total capacity for all of an event's timeslots added together

  def capacity
    self.timeslots.sum('capacity')
  end

  # For each timeslot, counts the number of arrangements and increments the total arrangements
  # and then returns the total.

  def total_volunteers
    currently_filled = 0
    self.timeslots.each do |timeslot|
      currently_filled += timeslot.arrangements.count
    end
    return currently_filled
  end

  # returns a % for the total volunteers progress bar to use

  def progress
    return (self.total_volunteers.to_f / self.capacity) * 100
  end

  # Class level method - returns a collection of the future events ordered by start_time.
  # In current form this does not return an active record association.

  def self.order_by_start_time
    events_and_times = future.sort_by do |event|
      event.start_time
    end
  end

  # returns an array of matches of an event's interests and a user's interests

  def match_interests(user)
    self.interests & user.interests
  end

  # returns an array of matches of an event's skills and a user's interests

  def match_skills(user)
    self.skills & user.skills
  end

  # returns a ranking asigned to an event by multiplying the interest match value * a weighting

  def interest_rank(user, weight)
    self.match_interests(user).count * weight.to_f
  end

  # returns a ranking asigned to an event by multiplying the skill match value * a weighting

  def skill_rank(user, weight)
    self.match_skills(user).count * weight.to_f
  end

  # returns a total ranking asigned to an event by adding the interest and skill ranks

  def total_rank(user, interest_weight, skill_weight)
    interest_rank(user, interest_weight) + skill_rank(user, skill_weight)
  end

  # Class level method - uses the "total rank" for an event to filter the events in order
  # of highest ranking first. Returns an array rather than an active record association so
  # could be improved.

  def self.filter_for_user(user, interest_weight, skill_weight)
    sorted_events = future.sort_by do |event|
      event.total_rank(user, interest_weight, skill_weight)
    end.reverse
  end

end
