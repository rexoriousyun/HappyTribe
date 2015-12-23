class Event < ActiveRecord::Base
	has_many :timeslots
	has_many :arrangements, through: :timeslots
  has_many :bookmarks
  belongs_to :organization
  has_and_belongs_to_many :interests
  has_and_belongs_to_many :skills

  geocoded_by :location
  after_validation :geocode


  # searchable do
  #   text :name, :location
  #   text :organization_name
  #   text :interest_list
  #   text :skill_list


  # end

  def start_time
  	self.timeslots.order(start_time: :asc).first.start_time.localtime
  end

  def end_time
  	self.timeslots.order(end_time: :asc).last.end_time.localtime
  end

  def self.future
    joins(:timeslots).where("timeslots.start_time >= '#{Time.now}'").distinct
  end


  def self.order_by_start_time
    events_and_times = future.sort_by do |event|
      event.start_time
    end
  end

  def self.filter_for_user(user, interest_weight, skill_weight)
    sorted_events = future.sort_by do |event|
      event.total_rank(user, interest_weight, skill_weight)
    end.reverse
  end
  # In the 2 methods below, the single ampersand & is not a typo
  # It checks matches between 2 arrays and returns an array of matches

  def match_interests(user)
    self.interests & user.interests
  end

  def match_skills(user)
    self.skills & user.skills
  end

  def interest_rank(user, weight)
    self.match_interests(user).count * weight.to_f
  end

  def skill_rank(user, weight)
    self.match_skills(user).count * weight.to_f
  end

  def total_rank(user, interest_weight, skill_weight)
    interest_rank(user, interest_weight) + skill_rank(user, skill_weight)
  end


  # # solr callbacks please do not touch
  # def organization_name
  #   Organization.find(organization_id).name
  # end
  # def interest_list
  #   return self.interests.map{|interest| interest.name}
  # end
  # def skill_list
  #   return self.skills.map{|skill| skill.name }
  # end
end
