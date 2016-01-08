class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :require_login
  before_filter :set_search
  helper_method :mailbox, :conversation

  def not_authenticated
  	redirect_to login_path, alert: "Please Login :)"
  end

  def set_search
		@q = Event.future.ransack(params[:q])
	end

  private

  def mailbox
    @mailbox ||= current_user.mailbox
  end

  def conversation
    @conversation ||= mailbox.conversations.find(params[:id])
  end

end
