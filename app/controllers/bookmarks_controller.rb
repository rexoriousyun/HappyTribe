class BookmarksController < ApplicationController
  before_action :get_event, only: [:create]

  def new
  end

  def create
  	@bookmark = @event.bookmarks.build
    @bookmark.user = current_user
    if @bookmark.save
      redirect_to event_path(@event), notice: "bookmark successfully made!"
    else
      flash[:alert] = "Volunteering bookmark failed to save."
      render event_path(@event)
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @bookmark = bookmark.find(params[:id])
    unless @bookmark.destroy
      flash[:alert] = "Deleting Bookmark failed"
    end
    redirect_to user_path(current_user)
  end

  private

  def get_event
    @event = Event.find(params[:event_id])
  end
end