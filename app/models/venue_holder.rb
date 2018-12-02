require 'json'
require 'faraday'

class VenueHolder

  attr_accessor :venues

  def initialize(country_name)
    conn = Faraday.new(:url => 'https://api.foursquare.com/v2/venues/search') do |c|
      c.use Faraday::Request::UrlEncoded  # encode request params as "www-form-urlencoded"
      c.use Faraday::Response::Logger     # log request & response to STDOUT
      c.use Faraday::Adapter::NetHttp     # perform requests with Net::HTTP
    end
    countryData = TripsController.countries[country_name]
    httpParams = "?client_id=NQIJIBID00KPAONWWSS1NO35ZCNN04DDAN2OOO2PTXHQIA54&client_secret=4R12UMTGWLNZN2TEK0LE3PVH25QBLNPZ0AUTERAKKCGV4FMZ&v=20180323&categoryId=4bf58dd8d48988d12d941735&limit=10&intent=checkin&ll=#{countryData[:la]},#{countryData[:lo]}"
    response = conn.get httpParams
    @body = response.body
    @venues = []
    @hash = JSON.parse(@body)
    (0..9).to_a.sample(4).each do |n|
      @venues.push Venue.new(@hash['response']['venues'][n])
    end
  end
end
