class Beverage
  
  def initialize(description)
    @description = description
  end
  
  def cost()
    raise "Abstract method of Beverage not implemented."
  end
  
  def get_description()
    return @description
  end
  
end