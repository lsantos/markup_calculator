require 'test/unit'
require 'markup_calculator'

class MarkupBuilderTest < Test::Unit::TestCase
  def test_building_food_markups
    markup_builder = MarkupBuilder.new 3, Category.new('food')
    markups = markup_builder.markups
    flat_rate_markup = markups.first
    people_markup = markups[1]
    last_markup   = markups.last
    assert_equal 3, markups.size, 'there should be 3 markups in the collection'
    assert_equal 1.05, flat_rate_markup.percentage
    assert_equal 1.036, people_markup.percentage
    assert_equal 1.13, last_markup.percentage
  end
end