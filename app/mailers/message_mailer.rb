class MessageMailer < ActionMailer::Base

  # default from: ""
  default to: "prakashthonnur@gmail.com"

  def new_message(message, from)
    @from = from
    @to = "prakashthonnur@gmail.com"
    @message = message
    @phone_number = @message.phone_number
    @body = @message.content
    @name = @message.name
    mail(:from => @from, :to => @to, :subject => 'Contact information', :body => @body, :name => @name, :phone_number => @phone_number )
  end

end
