class EventsController < ApplicationController
  skip_before_action :require_login, only: [:index, :show]
  before_action :get_event, only: [:show, :edit, :update, :destroy]

  def index
    @search = Event.search do
      fulltext params[:search]
    end
    @events = @search.results
  end

  def show
    # @event = Event.find(params[:id])
  end

  # the methods below show will only become relevant once we have a user/organization able to
  # create events

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def event_params
    params.require(:event).permit(:name, :start_time, :end_time, :max_capacity, :location, :description)
  end

  def get_event
    @event = Event.find(params[:id])
  end

end
