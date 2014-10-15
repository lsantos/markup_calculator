class Job
  attr_reader :markups, :price

  def initialize(price, number_of_people, category)
    fail 'Missing price' if price.nil?
    fail 'Missing number of people' if number_of_people.nil?
    fail 'Missing category' if category.nil?
    @price   = price
    @markups = MarkupBuilder.new(number_of_people, category).markups
  end
  
  def estimate
    markups.inject(price) {|price, markup| markup.calculate(price)}
  end
end