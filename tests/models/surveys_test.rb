# frozen_string_literal: true

require File.expand_path '../test_helper.rb', __dir__

class SurveyTest < MiniTest::Unit::TestCase
  MiniTest::Unit::TestCase

  def test_suvery_must_has_username
    # Arrange
    survey = Survey.new

    # Act
    survey.username = ''

    # Assert
    assert_equal survey.valid?, false
  end

  def test_survey_has_a_career
    # Arrange
    career = Career.create(name: 'Computacion')

    # Act
    Survey.create(username: 'User 1', career_id: career.id)

    # Assert
    assert_equal(career.surveys.count, 1)
  end
end
