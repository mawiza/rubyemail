Feature: parse message
  In order to unmarshal emails into objects
  As a ruby developer
  I want a ruby email parser

  Scenario: Parse email
	When an email is received
	Then parse the email
	
  Scenario: Split Email
	When the first CRLF is encountered preceded by nothing
	Then split the email
	And save as a header object
	And save as a body object
	
  Scenario: Map header fields
	When mapping the header fields
	Then unfold 
	And map the headers into header names and bodies
	
  Scenario: Map the body and body parts
	When mapping the body
	Given it is a multipart message as specified in the header fields
	Then map into body parts
	But when it is not a multipart message
	Then save only the body
	


