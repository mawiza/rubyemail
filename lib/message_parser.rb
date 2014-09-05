require 'rubyemail'
require 'message'
require 'header_fields'
require 'header_field'
require 'pry'

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
    map_headers(@message.header_fields.raw)
  end
  
  # Split the text at the first empy line encountered.
  def split_at_empty(message)
    parts = message.split(/^\s$/, 2)
    header_fields = RubyEmail::HeaderFields.new    
    header_fields.raw = parts[HEADER].strip
    @message.header_fields = header_fields
    body = RubyEmail::Body.new
    body.raw = parts[BODY].strip
    @message.body = body
  end
  
  # Unfolds and map each header field into HeaderField objects.
  # If the header field exist, then the field to be mapped will
  # be appended to that existing field.
  def map_headers(header)    
    header_field_regex = /(^\w+?(?:[\u002d\u002e]\w+?){0,}[\u003a\u0020])(.*\u000a(?:^(?:[\u0020\u0009]){1,}.*$){0,})/    
    header.scan(header_field_regex).each do |match|
      header_field = RubyEmail::HeaderField.new  
      header_field.name = match[0].chomp(':')
      if match.length == 2
        header_field.value = match[1] != nil ? match[1].strip : ""
        header_field.raw = match[0] + match[1]
      else
        header_field.value = ""
        header_field.raw = match[0] + ""
      end            
      @message.header_fields.fields[header_field.name] << header_field
    end
  end  
end