class CareerTest < MiniTest::Unit::TestCase
  MiniTest::Unit::TestCase
  
  def test_career_many_has_many_surveys
    # Arrange

    career1 = Career.create(name: 'Computacion')
    carrer2 = Career.create(name: 'Educacion Inicial')
    career3 = Career.create(name: 'Veterinaria')
    
    # Act

    Survey.create(username: 'User 1', career_id: career1.id)
    Survey.create(username: 'User 2', career_id: career2.id)
    Survey.create(username: 'User 3', career_id: career3.id)
    
    # Assert

    assert_equal(career.surveys.count, 3)
  end

end