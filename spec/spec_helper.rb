require 'rubyemail'
require 'message_parser'

module SpecHelper  
  def message
    if @message.nil?      
      @message = read_content("./spec/fixtures/complex_message.txt")    
    end
    @message
  end
  
  def message_header
    if @message_header.nil?
      @message_header = read_content("./spec/fixtures/complex_message_header.txt")
    end
    @message_header
  end
  
  def message_body
    if @message_body.nil?      
      @message_body = read_content("./spec/fixtures/complex_message_body.txt")
    end
    @message_body
  end
  
  private
  
  def read_content(fileName)
    begin
      file = File.new(fileName, "r")
      content = ""
      while (line = file.gets)
        content += line  
      end
      file.close
      content
    rescue=> err
      puts "Exception: #{err}"
      err
    end
  end
end
