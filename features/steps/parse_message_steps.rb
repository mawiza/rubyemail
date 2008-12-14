require File.dirname(__FILE__) + "/../../lib/rubyemail/message_parser"

message = File.open('messages/complex_message.txt').gets

When /^an email is received$/ do
  @parser = Rubyemail::MessageParser.new(message)
end

Then /^parse the email$/ do
  @parser.parse
end

When /^the first CRLF is encountered preceded by nothing$/ do
  
end

Then /^split the email$/ do
end

Then /^save as a header object$/ do
end

Then /^save as a body object$/ do
end

When /^mapping the header fields$/ do
end

Then /^unfold$/ do
end

Then /^map the headers into header names and bodies$/ do
end

When /^mapping the body$/ do
end

Given /^it is a multipart message as specified in the header fields$/ do
end

Then /^map into body parts$/ do
end

#But /^when it is not a multipart message$/ do
#end

Then /^save only the body$/ do
end
