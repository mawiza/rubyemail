require 'ruby_email'
# Run the parser to parser the message in tmp
# and test the output.

begin
  file = File.new("tmp/complex_message.txt", "r")
  message = ""
  while (line = file.gets)
    message += line  
  end
  file.close
  
  
  file = File.new("tmp/complex_message_header.txt", "r")
  message_header = ""
  while (line = file.gets)
    message_header += line  
  end
  file.close
  
  file = File.new("tmp/complex_message_body.txt", "r")
  message_body = ""
  while (line = file.gets)
    message_body += line  
  end
  file.close
rescue=> err
  puts "Exception: #{err}"
  err
end

describe RubyEmail::MessageParser do
  it "should set the raw message through parse_message" do
    parser = RubyEmail::MessageParser.new
    parser.parse_message(message)
    parser.message.raw.should == message
  end  
  
  it "should set the raw message through parse_file" do
    parser = RubyEmail::MessageParser.new
    parser.parse_file("tmp/complex_message.txt")
    parser.message.raw.should == message
  end
    
  it "should split the message at empty" do
    parser = RubyEmail::MessageParser.new
    parser.parse_message(message)
    parser.message.header_fields.raw = message_header
    parser.message.body.raw = message_body
  end
end
