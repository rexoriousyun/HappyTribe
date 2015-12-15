class OpportunitiesController < ApplicationController
  skip_before_action :require_login, only: [:index, :show]
  before_action :get_opportunity, only: [:show, :edit, :update, :destroy]

  def index
    if params[:search_location]
      @opportunities = Opportunity.near(params[:search_location])
    elsif params[:latitude] && params[:longitude]
      @opportunities = Opportunity.near([params[:latitude], params[:longitude]])
    else
      @opportunities = Opportunity.all
    end

    if request.xhr?
      render @opportunities
    end
  end

  def show
    if logged_in?
      @arrangement = @opportunity.arrangements.build
    end
  end

  # the methods below show will only become relevant once we have a user/organization able to
  # create opportunities

  def new
    @opportunity = Opportunity.new
  end

  def create
    @opportunity = Opportunity.new(opportunity_params)
    @opportunity.save
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

  def get_opportunity
    @opportunity = Opportunity.find(params[:id])
  end

end
