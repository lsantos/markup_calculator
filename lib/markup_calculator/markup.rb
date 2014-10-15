
class Markup
  attr_reader :percentage
  
  def initialize(percentage)
    @percentage = ((percentage.to_f / 100.0) + 1.0)
  end 

  def calculate(amount)
    (amount * percentage).round(2).to_f
  end
end