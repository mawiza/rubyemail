require 'rubyemail'

class RubyEmail::HeaderField < RubyEmail::Base
  attr_accessor :name
  attr_accessor :value
end