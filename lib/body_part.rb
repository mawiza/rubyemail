module RubyEmail
  class BodyPart < Body    
    attr_accessor :header_fields
    attr_accessor :boundary
  end
end
