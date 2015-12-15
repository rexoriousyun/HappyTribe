class ArrangementsController < ApplicationController

  before_action :get_timeslot

  def new
  end

  def create
    @arrangement = @timeslot.arrangements.build(arr_params)
    @arrangement.user = current_user
    if @arrangement.save
      redirect_to opportunity_path(@timeslot.opportunity), notice: "Arrangement successfully made!"
    else
      flash[:alert] = "Volunteering arrangement failed to save."
      render opportunity_path(@timeslot.opportunity)
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def get_timeslot
    @timeslot = Timeslot.find(params[:timeslot_id])
  end
  def arr_params
    params.require(:arrangement)
  end

end
