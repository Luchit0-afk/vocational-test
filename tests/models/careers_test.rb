require File.expand_path '../../test_helper.rb', __FILE__

class CareerTest < MiniTest::Unit::TestCase
  MiniTest::Unit::TestCase
  
  def test_careers_many_has_many_surveys
    # Arrange

    career = Career.create(name: 'Computacion')
    
    # Act

    Survey.create(username: 'User 1', career_id: career.id)
    Survey.create(username: 'User 2', career_id: career.id)
    Survey.create(username: 'User 3', career_id: career.id)
    
    # Assert

    assert_equal(career.surveys.count, 3)
  end

end