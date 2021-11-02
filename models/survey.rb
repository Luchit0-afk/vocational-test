# frozen_string_literal: true

class Survey < Sequel::Model
  many_to_one :career
  one_to_many :responses
  def validate
    super
    errors.add(:username, 'cannot be empty') if !username || username.empty?
  end

  def self.search_suitable_career(survey)
    careers = {}

    Career.all.each do |career|
      careers[career.id] = 0
    end

    survey.responses.each do |response|
      choice = Choice.find(id: response.choice_id)
      choice.outcomes.each do |outcome|
        careers[outcome.career_id] += 1
      end
    end

    careers.key(careers.values.max)
  end
end
