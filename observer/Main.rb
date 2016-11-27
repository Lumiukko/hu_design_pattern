#
# This program is an example for the observer pattern as shown in the
# book "Head First Design Patterns".
#
# The observer is a CurrentConditionsDisplay object, and the observable
# is a WeatherData object, which holds data about temperature, humidity
# and pressure.
#
# This example creates one observable and one observer. Subsequently it
# sets the data in the observable 10 times, which causes the observers
# to be notified and display the updated information.
# 
# 

require "./WeatherData"
require "./CurrentConditionsDisplay"


wd = WeatherData.new(23.0, 60.0, 1000.0)

ccd = CurrentConditionsDisplay.new(wd)


(1..10).each do |i|
  sleep(1)
  puts "Round #{i}: "
  new_temp = 20 + Random.rand(11)
  new_hum = 26 + Random.rand(11)
  new_press = 1000 + 5*Random.rand(11)
  wd.set_measurements(new_temp, new_hum, new_press)
end
