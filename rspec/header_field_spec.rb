require 'ruby_email'

#I have no testing experience, so this is quite new to me.
#If you have any suggestions, please contact me.
describe RubyEmail::HeaderField do
  # Test to see if the header at least contains a name, 
  # we do not care what format the header has. Validating the header is not the job of the
  # the HeaderField object, it is only a container of data. That wiil be the job of the 
  # message format validator(which is not yet implemented).
  it "should have a name" do    
    header_field = RubyEmail::HeaderField.new('name',nil)
    header_field.should be_valid_header_field_name
  end  
  
  #test setting the name, then the value, then retrieving the name and then value
  it "should be able to set the header field name then retrieve the header field name" do
    name = 'name'
    header_field = RubyEmail::HeaderField.new(name,'')
    header_field.name.should == name
  end
  
  it "should be able to set the header field body then retrieve the header field body" do
    name = 'name'
    body = 'body'
    header_field = RubyEmail::HeaderField.new(name,body)
    header_field.body.should == body
  end  
end
