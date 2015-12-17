class InterestsUsersController < ApplicationController

	def update
		@interest = Interest.find(params[:interest])
		if current_user.interests.include?(Interest.find(@interest))
			current_user.interests.delete(@interest)
		else
			current_user.interests << @interest
		end
		redirect_to user_path(current_user)
	end

end