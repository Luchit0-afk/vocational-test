class Choice < Sequel::Model
 many_to_one :outcome
 one_to_one :response
end
