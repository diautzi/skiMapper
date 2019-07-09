require "rest-client"

class APICall

  def self.get_data
    url = "https://www.powderproject.com/data/get-trails?lat=39.113014&lon=-105.358887&maxDistance=200&maxResults=500&key=200498147-40c4ade845441ad213f111b70e0ae228"
    headers = {"Accepts": "application/json"}
    response_string = RestClient.get(url, headers)
  end
end
