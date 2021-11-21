# frozen_string_literal: true

class Outcome < Sequel::Model
  many_to_one :career
  many_to_one :choice
end
