class ConversationsController < ApplicationController

  # this guide was integral to building this controller
  # http://josephndungu.com/tutorials/private-inbox-system-in-rails-with-mailboxer


  def new
  end

  def create
    recipients = User.where(id: conversation_params[:recipients])
    conversation = current_user.send_message(recipients, conversation_params[:body], conversation_params[:subject]).conversation
    flash[:alert] = "Your message was sent!"
    redirect_to conversation_path(conversation)
  end

  def show
    @recipts = conversation.receipts_for(current_user)
    conversation.mark_as_read(current_user)
  end

  private

  def conversation_params
    params.require(:conversation).permit(:subject, :body, recipients:[])
  end

end
