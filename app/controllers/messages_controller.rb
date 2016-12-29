class MessagesController < ApplicationController
  before_action :authenticate_user!
  def new

  end

  def create
    recipients = []
    params[:recipients].each do |f|
      if f.split(':').first === 'User'
        recipient = User.find(f.split(':').last)
        recipients << recipient
      elsif f.split(':').first === 'BusinessListing'
        recipient = BusinessListing.find(f.split(':').last)
        recipients << recipient
      end
    end
    conversation = current_user.send_message(recipients, params[:message][:body], params[:message][:subject]).conversation
    flash[:success] = "Message has been sent!"
    redirect_to conversation_path(conversation)
  end
end
