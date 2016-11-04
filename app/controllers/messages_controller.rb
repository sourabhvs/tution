class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.valid?
      MessageMailer.new_message(@message, message_params[:email]).deliver
      redirect_to root_path, notice: "Your messages has been sent."
    else
      flash[:alert] = "An error occurred while delivering this message."
      redirect_to root_path, error: "Your messages not sent."
    end
  end

private

  def message_params
    params.require(:message).permit(:name, :email, :content, :phone_number)
  end

end
