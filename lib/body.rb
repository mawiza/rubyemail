module RubyEmail
  class Body < Base      
    attr_accessor :content
    attr_reader :body_parts
    
    def body_parts=(value)
      @multipart = true
      @body_parts = value
    end
    
    def multipart=(value)
      @multipart = value
    end
    
    def multipart
      @multipart || false
    end
  end
end
