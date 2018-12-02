require 'json'

class Venue

  attr_accessor :name
  attr_accessor :city
  attr_accessor :state
  attr_accessor :category
  attr_accessor :location
  attr_accessor :lat
  attr_accessor :lng

  def initialize(body_hash)
    @name = body_hash['name']
    @location = body_hash['location']['formattedAddress'][0]
    @city = body_hash['location']['city']
    @state = body_hash['state']
    @category = body_hash['categories'][0]['shortName']
    @lat = body_hash['location']['lat']
    @lng = body_hash['location']['lng']
  end

end
