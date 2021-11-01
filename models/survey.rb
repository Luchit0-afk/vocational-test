# frozen_string_literal: true

class Survey < Sequel::Model
  many_to_one :career
  one_to_many :responses
  def validate
    super
    errors.add(:username, 'cannot be empty') if !username || username.empty?
  end

  def self.search_suitable_career(survey)
    table = {}

    Career.all.each do |career|
      table[career.id] = 0
    end

    survey.responses.each do |response|
      choice = Choice.find(id: response.choice_id)
      choice.outcomes.each do |outcome|
        table[outcome.career_id] += 1
      end
    end

    table.key(table.values.max)
  end
end
