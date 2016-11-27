require "./Beverage"

class Espresso < Beverage
  
  def initialize()
    @description = "Espresso"
  end
  
  def cost()
    return 1.99
  end

end



class HouseBlend < Beverage
  
  def initialize()
    @description = "House Blend Coffee"
  end
  
  def cost()
    return 0.89
  end
  
end



class DarkRoast < Beverage
  
  def initialize()
    @description = "Dark Roast"
  end
  
  def cost()
    return 1.49
  end

end