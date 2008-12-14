$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module Rubyemail
  VERSION = '0.0.1'
  
  class Base  
    attr_accessor :raw
  end
end

#require 'lib/rubyemail/header_fields'
#require 'lib/rubyemail/header_field'  
#require 'lib/rubyemail/body'
#require 'lib/rubyemail/body_part'
require 'lib/rubyemail/message'
#require 'lib/rubyemail/message_parser'
