require "./BeverageClasses"
require "./CondimentClasses"

bev = Espresso.new
puts "#{bev.get_description} -> #{bev.cost} EUR"

bev2 = HouseBlend.new
bev2 = Milk.new(bev2)
puts "#{bev2.get_description} -> #{bev2.cost} EUR"

bev3 = DarkRoast.new
bev3 = Mocha.new(bev3)
bev3 = Mocha.new(bev3)
bev3 = Whip.new(bev3)
puts "#{bev3.get_description} -> #{bev3.cost} EUR"