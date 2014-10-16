require 'test/unit'
require 'markup_calculator'

class MarkupPolicyTest < Test::Unit::TestCase
  def test_markup_policy_for_electronics
    policy = MarkupPolicy.new 2, Category.new('electronics')
    assert_equal 0.024, policy.percentage_for_people_count
    assert_equal MarkupPolicy::ELETRONICS_PERCENTAGE, policy.percentage_for_category
    assert_equal MarkupPolicy::FLAT_MARKUP_PERCENTAGE, policy.flat_markup_percentage
  end
  
  def test_markup_policy_for_books
    policy = MarkupPolicy.new(1, Category.new('books'))
    assert_equal MarkupPolicy::PER_PERSON_PERCENTAGE, policy.percentage_for_people_count
    assert_equal 0, policy.percentage_for_category
  end
end