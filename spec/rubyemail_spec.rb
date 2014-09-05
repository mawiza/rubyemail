require 'spec_helper'

RSpec.configure do |c|
  c.include SpecHelper
end

describe RubyEmail::MessageParser do
  
  context 'instantiating' do
    it "should accept message as parameter" do
      message_parser = RubyEmail::MessageParser.new(message)
      expect(message_parser.message.raw).to eq(message)
    end
  end
  
  context 'parsing the email message' do    
    it "should split the message at empty" do
      message_parser = RubyEmail::MessageParser.new(message)
      #message_parser.split_at_empty(message)
      message_parser.parse
      expect(message_parser.message.header_fields.raw).to eq(message_header)
      expect(message_parser.message.body.raw).to eq(message_body)
    end
    
    
    it "should unfold and map the header fields" do
      message_parser = RubyEmail::MessageParser.new(message)        
      message_parser.parse
      expect(message_parser.message.header_fields.fields.length).to eq(4)
    end
    
    it "should map the body" do
      pending
    end
  end
end
