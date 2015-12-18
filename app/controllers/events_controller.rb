class EventsController < ApplicationController
  skip_before_action :require_login, only: [:index, :show]
  before_action :get_event, only: [:show, :edit, :update, :destroy]

  def index
    if params[:search_location]
      @events = Event.near(params[:search_location])
    elsif params[:latitude] && params[:longitude]
      @events = Event.near([params[:latitude], params[:longitude]])
    else
      @events = Event.all
    end

    if request.xhr?
      render @events
    end
    # @search = Event.search do
    #   fulltext params[:search]
    # end
    # @events = @search.results>>>>>>> 182eba7b9074094d306d5aa4fa4d5bb1191f1d3e
  end

  def show
    @bookmark = @event.bookmarks.build
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
