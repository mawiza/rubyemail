class Rubyemail::MessageParser < Rubyemail::Base
  def initialize(email_message)
    @message = Rubyemail::Message.new
    @message.raw = email_message
  end
  
  def message
    return @message
  end  
end