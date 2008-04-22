module RubyEmail
  
  # This object is used by the Message and BodyPart objects
  class HeaderField < Base
    
    attr_reader :name, :body
        
    def initialize(name, body)
      super()           
      @name, @body = name, body
      valid_header_field_name?
    end
    
    # Validate the name. Should not be empty or nil
    def valid_header_field_name?
      unless (@name and @name.length > 0) and @name
        raise("Name should not be empty!")
      end      
      return true
    end
  end
end
