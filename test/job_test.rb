require 'test/unit'

class JobTest < Test::Unit::TestCase
  def test_job_price_for_food
    job = Job.new(1299.99, 3, 'food')
    assert_equal 1597.97, job.estimate
  end
	
  def test_job_price_for_drugs
    job = Job.new(5432.00, 1, 'Drugs')
    assert_equal 6204.94, job.estimate
  end
	
  def test_job_price_for_books
    job = Job.new(12456.95, 4, 'books')
    assert_equal 13707.63, job.estimate
  end
  
  def test_job_with_bad_input
    assert_raises(RuntimeError) {Job.new(nil, nil, nil)}
  end
end