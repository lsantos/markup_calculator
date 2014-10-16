class MarkupPolicy
  FLAT_RATE       = 0.05
	PER_PERSON_RATE = 0.012
  FOOD_RATE       = 0.13
  ELETRONICS_RATE = 0.02
  DRUGS_RATE      = 0.075
  attr_reader :number_of_people, :category
  
  def initialize(number_of_people, category)
    @number_of_people = number_of_people
    @category = category
  end
  
  def for_category
    if category.food?
      FOOD_RATE
    elsif category.electronics?
      ELETRONICS_RATE
    elsif category.drugs?
      DRUGS_RATE
    else
      0
    end	
  end
  
  def for_number_of_people
    number_of_people * PER_PERSON_RATE
  end
  
  def flat_rate
    FLAT_RATE
  end
end