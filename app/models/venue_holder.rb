require 'json'
require 'faraday'

class VenueHolder

  def self.get_http(country_name)
    response = ""
    conn = Faraday.new(:url => 'https://api.foursquare.com/v2/venues/search') do |c|
      c.use Faraday::Request::UrlEncoded
      c.use Faraday::Response::Logger
      c.use Faraday::Adapter::NetHttp
    end
    countryData = TripsController.countries[country_name]
    httpParams = "?client_id=" + Rails.application.credentials.foursquare[:client_id] + "&client_secret="+ Rails.application.credentials.foursquare[:client_secret] + "&v=20180323&categoryId=4bf58dd8d48988d12d941735&limit=10&intent=checkin&ll=#{countryData[:la]},#{countryData[:lo]}"
    response = conn.get httpParams
    body = response.body
    http = {}

    hash = JSON.parse(body)
    counter = 0;
    (0..9).to_a.sample(4).each do |n|
      if(!hash.nil? && !hash['response'].nil? && !hash['response']['venues'].nil? && !hash['response']['venues'][n].nil?)
        http[counter] = hash['response']['venues'][n]
        counter += 1
      end
    end
    return http;
  end
end
