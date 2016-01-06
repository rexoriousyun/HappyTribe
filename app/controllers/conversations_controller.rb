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
    @receipts = conversation.receipts_for(current_user)
    conversation.mark_as_read(current_user)
  end

  def reply
    current_user.reply_to_conversation(conversation, message_params[:body])
    flash[:notice] = "Your reply was sent!"
    redirect_to conversation_path(conversation)
  end

  def trash
    conversation.move_to_trash(current_user)
    redirect_to mailbox_inbox_path
  end

  def untrash
    conversation.untrash(current_user)
    redirect_to mailbox_inbox_path
  end

  private

  def message_params
    params.require(:message).permit(:body, :subject)
  end

  def conversation_params
    params.require(:conversation).permit(:subject, :body, recipients:[])
  end

end
