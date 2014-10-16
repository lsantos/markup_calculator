
class Markup
  attr_reader :base_price, :markup_policy
	
  def initialize(base_price, people_count, category)
    validate_required_parameters base_price, people_count, category
    @base_price = base_price
    @markup_policy = MarkupPolicy.new people_count, Category.new(category)
  end 
  
  def total
    (flat_percentage_total + people_total + product_total).round(2)
  end

private  
  def flat_percentage_total
    (base_price + base_price * markup_policy.flat_markup_percentage)
  end 

  def people_total
    markup_policy.percentage_for_people_count * flat_percentage_total
  end

  def product_total
    flat_percentage_total * markup_policy.percentage_for_category
  end
  
  def validate_required_parameters(base_price, people_count, category)
    fail 'Missing base price' if base_price.nil?
    fail 'Missing number of people' if people_count.nil?
    fail 'Missing category' if category.nil?
  end
end