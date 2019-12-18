class  CurrentWeather::Weather
    attr_accessor :sunrise, :sunset, :temperature, :precipitation, :wind_speed
    @@all = []
    def initialize(args)
        @sunrise = args["data"][0]["sunrise"]
        @sunset = args["data"][0]["sunset"]
        @temperature = args["data"][0]["temp"]
        @precipitation = args["data"][0]["precip"]
        @wind_speed = args["data"][0]["wind_spd"]
        @@all << self
    end

    def self.all
        @@all
    end

    def get_last
        
        puts "Sunrise: #{@sunrise}"
        puts 
        puts "Sunset: #{@sunset}"
        puts
        puts "Temperature: #{@temperature}"
        puts
        puts "Precipitation: #{@precipitation}"
        puts
        puts "Wind Speed: #{@wind_speed}"
        
    end
end