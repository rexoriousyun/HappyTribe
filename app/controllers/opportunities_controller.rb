class OpportunitiesController < ApplicationController
  skip_before_action :require_login, only: [:index, :show]
  before_action :get_opportunity, only: [:show, :edit, :update, :destroy]

  def index
    @opportunities = Opportunity.all
  end

  def show
  end

  # the methods below show will only become relevant once we have a user/organization able to
  # create opportunities

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def opportunity_params
    params.require(:opportunity).permit(:name, :start_time, :end_time, :max_capacity, :location, :description)
  end

  def get_opportunity
    @opportunity = Opportunity.find(params[:id])
  end

end
