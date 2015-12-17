class InterestsUsersController < ApplicationController

	def update
		@interest = Interest.find(params[:interest])
		if current_user.interests.include?(Interest.find(@interest))
			current_user.interests.delete(@interest)
			redirect_to user_path(current_user)
		else
			current_user.interests << @interest
			redirect_to user_path(current_user)
		end
	end

end