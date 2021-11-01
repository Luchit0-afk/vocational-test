class Survey < Sequel::Model
 many_to_one :career
 one_to_many :responses
  def validate
    super
    errors.add(:username, 'cannot be empty') if !username || username.empty?
  end

  def self.searchSuitableCareer(survey)
    table = {}

      for career in Career.all
        table[career.id] = 0
      end
        
      for response in survey.responses
        choice = Choice.find(id: response.choice_id)
        for outcome in choice.outcomes
          table[outcome.career_id] += 1
        end
      end

      return table.key(table.values.max)
    end
end
