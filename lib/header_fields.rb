require 'rubyemail'
require 'header_field'

class RubyEmail::HeaderFields < RubyEmail::Base
  attr_accessor :fields
  
  def initialize
    @fields = Hash.new {|h,k| h[k]=[]}
  end
end