class OpportunitiesController < ApplicationController
  skip_before_action :require_login, only: [:index, :show]

  def index
    @opportunities = Opportunity.all
  end

  def show
  end

  def new
    @opportunity = Opportunity.new
  end

  def create
    @opportunity = Opportunity.new(opportunity_params) 
  end

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
end
