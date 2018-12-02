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
    httpParams = "?client_id=NQIJIBID00KPAONWWSS1NO35ZCNN04DDAN2OOO2PTXHQIA54&client_secret=4R12UMTGWLNZN2TEK0LE3PVH25QBLNPZ0AUTERAKKCGV4FMZ&v=20180323&categoryId=4bf58dd8d48988d12d941735&limit=10&intent=checkin&ll=#{countryData[:la]},#{countryData[:lo]}"
    response = conn.get httpParams
    body = response.body
    http = ""

    hash = JSON.parse(@body)
    (0..9).to_a.sample(4).each do |n|
      http += hash['response']['venues'][n].to_json.to_s + ","
    end
    return http;
  end
end
