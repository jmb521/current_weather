class CurrentWeather::Cli

    def start
        greeting
        get_city_state
        show_results
    end

    def greeting
        puts "Welcome to our Weather app"
    end

    def get_city_state
        puts "Please enter your city"
        city = gets.chomp
        puts "Please enter state abbreviation"
        state = gets.chomp
        
        CurrentWeather::ApiService.get_weather(city,state)
    end

    def show_results
        # binding.pry
        puts CurrentWeather::Weather.all.last.get_last
    end

    

end