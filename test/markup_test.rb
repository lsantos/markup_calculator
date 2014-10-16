require 'test/unit'
require 'markup_calculator'

class MarkupTest < Test::Unit::TestCase
  def test_markup_price_for_food
    markup = Markup.new(1299.99, 3, 'food')
    assert_equal 1591.58, markup.total
  end
	
  def test_markup_price_for_drugs
    markup = Markup.new(5432.00, 1, 'Drugs')
    assert_equal 6199.81, markup.total
  end
	
  def test_markup_price_for_books
    markup = Markup.new(12456.95, 4, 'books')
    assert_equal 13707.63, markup.total
  end
end