module RubyEmail
  class MessageParser
        
    #
    #
    #
    def parse_message(message)
      @message = Message.new
      @message.raw = message
      
      parse
    end
    
    #
    #
    #
    def parse_file(message_file)
      begin
        file = File.new(message_file, "r")
        @message = Message.new
        @message.raw = ""
        while (line = file.gets)
          @message.raw += line
        end
        file.close
        parse
      rescue=> err
        puts "Exception: #{err}"
        err
      end      
    end
    
    #
    #
    #
    def message
      return @message
    end
    
    private
    
    # Parse the message
    #
    #
    def parse      
      header, body = split_at_first_empty      
      message.header_fields = map_header(header)
      message.body = map_body(body)
    end
    
    # Split at the first empty line encountered.
    #
    #
    def split_at_first_empty
      split_message = @message.raw.split(/^$/, 2)
      
      if split_message.length == 2
        return split_message[0], split_message[1]
      else
        raise "Message in wrong format, not compliant to the rfc standards."
      end  
    end
    
    #
    #
    #
    def split_before_boundary
      
    end
    
    #
    #
    #
    def map_header(header)
      header_fields = RubyEmail::HeaderFields.new
      header_fields.raw = header
      
      @message.header_fields = header_fields
      
      #TODO Parse the header
    end
    
    def find_headerfield(headers, regex)
      
    end
    
    #
    #
    #
    def map_body(body_content)
      body = RubyEmail::Body.new
      body.raw = body_content
      
      @message.body = body
    end
    
    def map_body_parts(body, boundary)
      
    end
    
    def map_body_part(body_part, boundary)
      
    end
    
    def get_boundary(content_type_body)
      
    end
  end
end
