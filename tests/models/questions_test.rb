require File.expand_path '../../test_helper.rb', __FILE__

class QuestionTest < MiniTest::Unit::TestCase
  MiniTest::Unit::TestCase
  def test_question_to_has_choice
    # Arrange
    question = Question.create(name: 'Q1', description: 'Me trasladaría a una zona agrícola - ganadera para ejercer mi profesión.',number: 1,type: 'Multiple-Choice')
    
    # Act
    Choice.create(text: 'Si' , question: Q1)
    Choice.create(text: 'No' , question: Q1)
    
    # Assert
    assert_equal(question.choices.count, 2)
  end
end
