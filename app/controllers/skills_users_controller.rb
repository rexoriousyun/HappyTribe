class SkillsUsersController < ApplicationController

  def update
  	@skill = Skill.find(params[:skill])
		if current_user.skills.include?(Skill.find(@skill))
			current_user.skills.delete(@skill)
		else
			current_user.skills << @skill
		end
		redirect_to user_path(current_user)
  end

end
