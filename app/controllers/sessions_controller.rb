class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
  end

  def create
  	if @user = login(params[:email], params[:password])
  		redirect_to :events, notice: "Welcome #{@user.first_name} :D"
  	else
  		flash.now[:alert] = "Login Failed :("
  		render :new
  	end
  end

  def destroy
  	logout
  	redirect_to root_path, notice: "Logged Out :X"
  end
end
