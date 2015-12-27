class EventsController < ApplicationController
  skip_before_action :require_login, only: [:index, :show]
  before_action :get_event, only: [:show, :edit, :update, :destroy]

  def index
    if params[:q] == nil
      if params[:filter]
        case params[:filter]
        when "Start Time (Soonest first)"
          @events = Event.order_by_start_time
        when "Match my Interests"
          @events = Event.filter_for_user(current_user, 1, 0)
        when "Match my Skills"
          @events = Event.filter_for_user(current_user, 0, 1)
        when "Match my Interests AND Skills"
          @events = Event.filter_for_user(current_user, 0.6, 0.4)
        end
      else
        @events = Event.order_by_start_time
      end
    else
      @events = @q.result.includes(:interests, :skills).uniq
    end
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
