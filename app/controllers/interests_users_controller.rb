class InterestsUsersController < ApplicationController

	def update
		@interest = Interest.find(params[:id])
		if current_user.interests.include?(@interest)
			current_user.interests.delete(@interest)
		else
			current_user.interests << @interest
		end
		redirect_to user_path(current_user)
	end

end