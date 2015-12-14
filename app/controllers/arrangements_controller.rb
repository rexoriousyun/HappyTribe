class ArrangementsController < ApplicationController


  def new
  end

  def create
    get_opportunity
    @arrangement = @opportunity.arrangements.build(arr_params)
    @arrangement.user = current_user
    if @arrangement.save
      puts "SUCESS!"
    else
      puts "failure"
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
    @opportunity = Opportunity.find(params[:id])
  end
  def arr_params
    params.require(:arrangement).permit(:time_slot, :opportunity_id)
  end
end
