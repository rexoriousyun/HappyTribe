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
  	self.timeslots.order(start_time: :asc).first.start_time
  end

  def end_time
  	self.timeslots.order(end_time: :asc).last.end_time
  end

  def match_interests(user_interests)
    event_interests = self.interests
    matched_interests = event_interests & user_interests
    return matched_interests
  end

  def match_skills(user_skills)
    event_skills = self.skills
    matched_skills = event_skills & user_skills
    return matched_skills
  end

  def self.filter_for_user(user_interests, user_skills, interest_weight, skill_weight)
    ranked_events = []
    Event.all.each do |event|
      ranked_events << {
        event: event,
        ranking: (event.match_interests(user_interests).count * interest_weight
          + event.match_skills(user_skills).count) * skill_weight
      }
    end
    ranked_events
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
