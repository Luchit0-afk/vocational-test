# frozen_string_literal: true

class Question < Sequel::Model
  one_to_many :responses
  one_to_many :choices
end
