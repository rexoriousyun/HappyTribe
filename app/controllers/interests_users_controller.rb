class InterestsUsersController < ApplicationController

	def update
		@interest = Interest.find(params[:interest]
			current_user.interests << @interest
			redirect_to events_path
	end

end