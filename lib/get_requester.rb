# Write your code here
class GetRequester

  attr_reader :url

  def initialize(url)
    @url = url
  end

  def get_response_body
    url = URI.parse(@url)
    response = Net::HTTP.get_response(url)
    response.body
  end

  def parse_json

  end

end
