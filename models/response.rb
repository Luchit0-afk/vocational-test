class Response < Sequel::Model
	many_to_one :Survey 
	many_to_one :Question
	one_to_one :Choice
end