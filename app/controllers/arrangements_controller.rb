class ArrangementsController < ApplicationController

  before_action :get_timeslot

  def new
  end

  def create
    @arrangement = @timeslot.arrangements.build
    @arrangement.user = current_user
    if @arrangement.save
      UserMailer.registered_email(@arrangement.user).deliver_now
      redirect_to user_path(current_user), notice: "Arrangement successfully made!"
    else
      arr_errors = @arrangement.errors.full_messages if @arrangement.errors.any?
      flat_errors = arr_errors.join
      flash[:alert] = "Volunteering arrangement failed to save. " << flat_errors
      redirect_to event_path(@timeslot.event)
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @arrangement = Arrangement.find(params[:id])
    if @arrangement.destroy
      redirect_to user_path(current_user), notice: "Cancelled arrangement for '#{@arrangement.event.name}'"
    else
      flash[:alert] = "Something went wrong and we couldn't cancel. Please try again or contact support."
      redirect_to user_path(current_user)
    end
  end

  private

  def get_timeslot
    @timeslot = Timeslot.find(params[:timeslot_id])
  end

end
