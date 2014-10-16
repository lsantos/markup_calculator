class MarkupPolicy
  FLAT_MARKUP_PERCENTAGE = 0.05
	PER_PERSON_PERCENTAGE  = 0.012
  FOOD_PERCENTAGE        = 0.13
  ELETRONICS_PERCENTAGE  = 0.02
  DRUGS_PERCENTAGE       = 0.075
  attr_reader :people_count, :category
  
  def initialize(people_count, category)
    @people_count = people_count
    @category = category
  end
  
  def percentage_for_category
    if category.food?
      FOOD_PERCENTAGE
    elsif category.electronics?
      ELETRONICS_PERCENTAGE
    elsif category.drugs?
      DRUGS_PERCENTAGE
    else
      0
    end	
  end
  
  def percentage_for_people_count
    people_count * PER_PERSON_PERCENTAGE
  end
  
  def flat_markup_percentage
    FLAT_MARKUP_PERCENTAGE
  end
end