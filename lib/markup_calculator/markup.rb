
class Markup
  attr_reader :base_price, :markup_policy
	
  def initialize(base_price, number_of_people, category)
    validate_required_parameters base_price, number_of_people, category
    @base_price = base_price
    @markup_policy = MarkupPolicy.new number_of_people, Category.new(category)
  end 
  
  def total
    (flat_percentage_total + people_total + product_total).round(2)
  end

private  
  def flat_percentage_total
    (base_price + base_price * markup_policy.flat_rate)
  end 

  def people_total
    markup_policy.for_number_of_people * flat_percentage_total
  end

  def product_total
    flat_percentage_total * markup_policy.for_category
  end
  
  def validate_required_parameters(base_price, number_of_people, category)
    fail 'Missing base price' if base_price.nil?
    fail 'Missing number of people' if number_of_people.nil?
    fail 'Missing category' if category.nil?
  end
end