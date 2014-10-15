require 'test/unit'
require 'markup_calculator'

class MarkupTest < Test::Unit::TestCase
  def test_calculate
    markup = Markup.new(13)
    assert_equal 113.00, markup.calculate(100)
  end
end