require 'net/http'
require "open-uri"
@data =
class Apisearch

  @url = ''
  @app_id = ''
  @token = ''

  def initialize(params = {})
    @url = params[:url] || ''
    @app_id = params[:app_id] || ''
  end

  def search
    if !@query
      puts 'http://apisearch.global.ssl.fastly.net/v1?app_id=54725861&token=daf93c2b-40bc-49f2-870e-f8f62ea524ad&query={"q":"hel"}'
      URI.parse('http://apisearch.global.ssl.fastly.net/v1?app_id=54725861&token=daf93c2b-40bc-49f2-870e-f8f62ea524ad&query={"q":"hel"}').read
    else
      #Net::HTTP.get('http://apisearch.global.ssl.fastly.net', '/v1?app_id=54725861&token=daf93c2b-40bc-49f2-870e-f8f62ea524ad&query={"q":"#{@query}"}')
    end
  end

  def set_query(query)
    @query = query
  end

  def test_connection
    puts "Testing connection!"
  end

end
