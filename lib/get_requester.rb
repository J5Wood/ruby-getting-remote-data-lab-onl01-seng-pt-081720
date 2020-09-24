require 'net/http'
require 'json'

class GetRequester

  def initialize(url)
    @url = url
  end

  def get_response_body
    response.tap = Net::HTTP.get_response(URI.parse(@url)).body
  end

  def parse_json
    JSON.parse(self.get_response_body)
  end

end
