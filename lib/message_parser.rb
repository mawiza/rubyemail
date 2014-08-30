require 'rubyemail'
require 'message'
require 'header_fields'

class RubyEmail::MessageParser < RubyEmail::Base
  HEADER = 0
  PREAMBLE = 0
  BODY = 1
  
  def initialize(email_message)
    @message = RubyEmail::Message.new
    @message.raw = email_message
  end
  
  def message
    return @message
  end
  
  def parse
    split_at_empty(@message.raw)
  end
  
  def split_at_empty(message)
    parts = message.split(/^\s$/, 2)    
    header_fields = RubyEmail::HeaderFields.new    
    header_fields.raw = parts[HEADER].strip
    @message.header_fields = header_fields
    body = RubyEmail::Body.new
    body.raw = parts[BODY].strip
    @message.body = body
  end
  
  
end