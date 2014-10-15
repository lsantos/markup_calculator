class MarkupPolicy
  FLAT_RATE       = 5
	PER_PERSON_RATE = 1.2
  FOOD_RATE       = 13
  ELETRONICS_RATE = 2
  DRUGS_RATE      = 7.5
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
    end	
  end
  
  def for_number_of_people
    number_of_people * PER_PERSON_RATE
  end
  
  def flat_rate
    FLAT_RATE
  end
end