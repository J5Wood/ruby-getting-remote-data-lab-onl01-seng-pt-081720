require 'net/http'
class GetRequester

  attr_reader :url

  def initialize(url)
    @url = url
  end

  def get_response_body
    response = Net::HTTP.get_response(URI.parse(@url))
    response.body
  end

  def parse_json

  end

end
