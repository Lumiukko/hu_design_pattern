require "./CondimentDecorator"

class Milk < CondimentDecorator
  
  def initialize(beverage)
    @beverage = beverage
  end
  
  def get_description()
    return @beverage.get_description + ", Milk"
  end
  
  def cost()
    return 0.10 + @beverage.cost
  end
  
end



class Mocha < CondimentDecorator
  
  def initialize(beverage)
    @beverage = beverage
  end
  
  def get_description()
    return @beverage.get_description + ", Mocha"
  end
  
  def cost()
    return 0.20 + @beverage.cost
  end
  
end



class Whip < CondimentDecorator
  
  def initialize(beverage)
    @beverage = beverage
  end
  
  def get_description()
    return @beverage.get_description + ", Whip"
  end
  
  def cost()
    return 0.40 + @beverage.cost
  end
  
end