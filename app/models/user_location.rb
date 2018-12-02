require 'json'
require 'faraday'

class UserLocation
  def self.get_country(user, country, ip)

    conn = Faraday.new(:url => 'http://api.ipstack.com/')
    httpParams = ip + "?access_key=9c837201bb53ebcea8801a025b37a17f"
    response = conn.get httpParams
    puts response
    hash = JSON.parse(response.body)
    return hash["country_name"]
  end
end
