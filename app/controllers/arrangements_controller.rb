class ArrangementsController < ApplicationController
  before_arrangement

  def new
  end

  def create
    get_opportunity
    @arrangement = @opportunity.arrangements.build(arr_params)
    @arrangement.user = current_user
    if @arrangement.save
      redirect_to opportunity_path(@opportunity), notice: "Arrangement successfully made!"
    else
      flash[:alert] = "Volunteering arrangement failed to save."
      render opportunity_path(@opportunity)
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
  def get_opportunity
    @opportunity = Opportunity.find(params[:opportunity_id])
  end
  def arr_params
    params.require(:arrangement).permit(:time_slot, :opportunity_id)
  end
end
