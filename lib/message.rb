require 'rubyemail'
require 'header_fields'
require 'body'

class RubyEmail::Message < RubyEmail::Base
  attr_accessor :header_fields
  attr_accessor :body
end