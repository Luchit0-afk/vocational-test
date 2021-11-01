class Choice < Sequel::Model
	one_to_many :outcomes
	one_to_one  :response
	many_to_one :question
end
