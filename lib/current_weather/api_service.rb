class CurrentWeather::ApiService

    def self.get_weather(city, state)
        
        url = "api.weatherbit.io/v2.0/current?city=#{city}&state=#{state}&key=d1a5db268bcf4076bec39836f71b4951&state=IL&units=I"
        response = RestClient.get(url)
        CurrentWeather::Weather.new(JSON.parse(response))
        
    end
end