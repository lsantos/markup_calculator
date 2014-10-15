class Category
  attr_reader :name
  
  def initialize(name)
    @name = name.to_s.downcase
  end
  
  def food?
    name == 'food'
  end
  
  def drugs?
    name == 'drugs'
  end
  
  def electronics?
    name == 'electronics'
  end
end