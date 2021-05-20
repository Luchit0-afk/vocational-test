class Choice < Sequel::Model
 many_to_one :outcomes
 one_to_one :responses
end
