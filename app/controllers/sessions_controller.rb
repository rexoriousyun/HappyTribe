class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
  end

  def create
  	if @user = login(params[:email], params[:password])
  		redirect_to :opportunities, notice: "Login Successful :D"
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
