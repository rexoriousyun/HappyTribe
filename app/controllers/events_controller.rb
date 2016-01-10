class EventsController < ApplicationController
  skip_before_action :require_login, only: [:index, :show]
  before_action :get_event, only: [:show, :edit, :update, :destroy]
  before_action :get_organization, only: [:new, :edit, :create, :update, :destroy]
  before_action :get_interests, only: [:new, :edit]
  before_action :get_skills, only: [:new, :edit]
  before_action :is_event_coordinator?, only: [:new, :edit, :create, :update, :destroy]

  def new
    @event = @organization.events.build
  end

  def create
    @event = @organization.events.build(event_params)
    if @event.save
      redirect_to event_path(@event), notice: "Successfully created a new event!"
    else
      flash[:alert] = "Sorry, your event could not be created"
      render :new
    end
  end

  def index
    if params[:q] == nil
      if params[:filter]
        case params[:filter]
        when "Event Date (ascending)"
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
    render :layout => 'indexlayout'

    respond_to do |format|
      format.js
      format.html
    end
  end

  def show
    @bookmark = @event.bookmarks.build
  end


  def edit
  end

  def update
    if @event.update_attributes(event_params)
      # EventMailer.modified_email(@event).deliver_now
      redirect_to event_path(@event), notice: "Successfully updated #{@event.name}."
    else
      flash[:alert] = "There was a problem saving your changes."
      render :edit
    end
  end

  def destroy
    if @event.destroy
      # EventMailer.deleted_email(@event).deliver_now
      redirect_to user_managed_organizations_path(current_user), notice: "Event cancelled"
    else
      flash[:alert] = "Something went wrong, please try again."
      render :show
    end
  end

  private

  def event_params
    params.require(:event).permit(
      :name, :location, :description, :role, :event_image, :event_image_cache,
      timeslots_attributes: [:id, :start_time, :end_time, :capacity, :_destroy],
      :interest_ids => [], :skill_ids => []
    )
  end

  def get_event
    @event = Event.find(params[:id])
  end

  def get_organization
    @organization = Organization.find(params[:organization_id])
  end

  def get_skills
    @interests = Interest.all
  end

  def get_interests
    @skills = Skill.all
  end

  def is_event_coordinator?
    get_organization
    unless current_user == @organization.event_coordinator || current_user.admin
      redirect_to events_path, alert: "Invalid user permissions to access that page"
    end
  end

end
