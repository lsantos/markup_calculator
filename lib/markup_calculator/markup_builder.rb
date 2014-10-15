class MarkupBuilder
	attr_reader :markups, :number_of_people, :category, :percentage_policy
		
  def initialize(number_of_people, category)
    @number_of_people = number_of_people
    @category = Category.new category
    @percentage_policy  = MarkupPolicy.new number_of_people, category
    init_markups
  end
	
private
  def init_markups
    @markups = []
    markups << Markup.new(percentage_policy.flat_rate)
    markups << Markup.new(percentage_policy.for_number_of_people)
    markups << Markup.new(percentage_policy.for_category)
  end	
end