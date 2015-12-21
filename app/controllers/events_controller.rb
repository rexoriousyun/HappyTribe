class EventsController < ApplicationController
  skip_before_action :require_login, only: [:index, :show]
  before_action :get_event, only: [:show, :edit, :update, :destroy]

  def index
    @q = Event.ransack(params[:q])
    if logged_in?
      interests_or_skills = current_user.interests.any? || current_user.skills.any?
    end
    if params[:q] == nil && interests_or_skills
      @events = Event.filter_for_user(current_user, 0.75, 0.25)
    elsif params[:q]
      @events = @q.result.includes(:interests, :skills).uniq
    else
      @events = Event.order_by_start_time
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
