require 'test/unit'
require 'markup_calculator'

class CategoryTest < Test::Unit::TestCase
  def test_name_is_downcase
    cat = Category.new 'Food'
    assert_equal 'food', cat.name
  end
  
  def test_food_predicate
    cat = Category.new 'food'
    assert cat.food?, 'should be true'
  end
  
  def test_drugs_predicate
    cat = Category.new 'drugs'
    assert cat.drugs?, 'should be true'
  end
  
  def test_electronics_predicate
    cat = Category.new 'electronics'
    assert cat.electronics?, 'should be true'
  end
end