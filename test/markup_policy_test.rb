require 'test/unit'
require 'markup_calculator'

class MarkupPolicyTest < Test::Unit::TestCase
  def test_markup_policy_for_electronics
    policy = MarkupPolicy.new 2, Category.new('electronics')
    assert_equal 2.4, policy.for_number_of_people
    assert_equal MarkupPolicy::ELETRONICS_RATE, policy.for_category
    assert_equal MarkupPolicy::FLAT_RATE, policy.flat_rate
  end
  
  def test_markup_policy_for_books
    policy = MarkupPolicy.new(1, Category.new('books'))
    assert_equal 1.2, policy.for_number_of_people
    assert_nil policy.for_category
  end
end