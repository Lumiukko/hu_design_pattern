require "observer"


class CurrentConditionsDisplay
  	
	def initialize(observable)
	  puts "New observer initlialized."
	  observable.add_observer(self)
	  @observable = observable
	  @temperature = 0.0
	  @humidity = 0.0
	  @pressure = 0.0
	end
	
	def update(observable)
	  puts "New measurements from #{observable}."
	  if observable.is_a?(WeatherData)
	    @temperature = observable.get_temperature
	    @humidity = observable.get_humidity
	    @pressure = observable.get_pressure
	    display
	  else
	    puts "Observable is not of type WeatherData."
	  end
	end
	
	def display()
	  puts "CCD: temperature=#{@temperature}, humidity=#{@humidity}, pressure=#{@pressure}"
	end

end