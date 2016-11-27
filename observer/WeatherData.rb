require "observer"

class WeatherData
  
  include Observable
  
  def initialize(temperature, humidity, pressure)
    puts "WeatherData initialized."
    set_measurements(temperature, humidity, pressure)
  end
  
  def set_measurements(temperature, humidity, pressure)
    puts "New measurements available."
    @temperature = temperature
    @humidity = humidity
    @pressure = pressure
    changed
    notify_observers(self)
  end
  
  def get_temperature()
    return @temperature
  end
  
  def get_humidity()
    return @humidity
  end
  
  def get_pressure()
    return @pressure
  end
  
end
