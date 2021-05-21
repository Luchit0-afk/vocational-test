require File.expand_path '../../test_helper.rb', __FILE__

class QuestionTest < MiniTest::Unit::TestCase
  MiniTest::Unit::TestCase
  def test_question_to_has_choice
    # Arrange
    question = Question.create(name: "question1", description: "para reflexionar sobre objetivos personales", number: 1, type: "reflexiva")
    # Act
    Choice.create(text: String)
    Choice.create(text: String)
    Choice.create(text: String)
    # Falla. No me cuenta las choices.
    # Assert
    assert_equal(question.choices.count, 3)
  end
end
