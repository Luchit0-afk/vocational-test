# frozen_string_literal: true

require File.expand_path '../test_helper.rb', __dir__

class OutcomeTest < MiniTest::Unit::TestCase
  MiniTest::Unit::TestCase
  def test_many_outcomes_to_one_carrer
    # Arrange
    career = Career.create(name: 'Geologia')
    choice = Choice.create(text: 'Excelente, Bien, Mas o menos, Mal, Mul mal')
    # Act
    Outcome.create(career_id: career.id, choice_id: choice.id)
    Outcome.create(career_id: career.id, choice_id: choice.id)
    Outcome.create(career_id: career.id, choice_id: choice.id)
    # Assert
    assert_equal(career.outcomes.count, 3)
  end
end
