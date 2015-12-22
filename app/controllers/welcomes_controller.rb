class WelcomesController < ApplicationController

  def index
  	@top_interests = Interest.sort_by_popularity(6)
  	@top_skills = Skill.sort_by_popularity(6)
  end

end
