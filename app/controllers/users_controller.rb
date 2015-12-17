class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  before_action :get_user, only: [:edit, :show, :update]
  before_action :user_authorized?, only: [:edit, :show, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Successfully signed up for Happy Tribe!"
      auto_login(@user)
      redirect_to events_path
    else
      flash[:alert] = "Sorry, Signup failed. :("
      render :new
    end
  end

  def edit
  end

  def show
    @interests = Interest.all
  end

  def update
    if @user.update_attributes(user_params)
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  private

  def get_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def user_authorized?
    get_user
    unless current_user == @user
      flash[:alert] = "Sorry, this doesn't seem to be your profile page. Redirecting to your profile."
      redirect_to user_path(current_user)
    end
  end

end
