class Career < Sequel::Model
	one_to_many :surveys
	many_to_one :outcomes
end