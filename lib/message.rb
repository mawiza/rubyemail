module RubyEmail
  class Message < Base
    attr_accessor :header_fields, :body, :preamble, :epilogue
    
    #
    #
    #
    def find_header_field(regex)
      
    end
    
    #
    #
    #
    def find_header_fields(regex)
      
    end
    
    #
    #
    #
    def from=(value)
      @from=value
    end
    def from
      @from_email, @from_name = tokenize_from_address
    end
        
    #
    #
    #
    def to=(value)
      @to=value
    end
    def to
      header_body(/to:/)
    end
        
    #
    #
    #
    def subject=(value)
      @subject=value
    end
    def subject
      header_body(/subject:/)
    end
    
    #
    #
    #
    def return_path
      header_body(/return-path:/)
    end
    
    #
    #
    #
    def send_date
      header_body(/date:/)
    end
    
    private 
    
    #
    #
    #
    def header_body(regex)
      
    end
    
    #
    #
    #
    def tokenize_from_address
      
    end
  end
end
