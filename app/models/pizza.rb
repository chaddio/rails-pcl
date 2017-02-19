class Pizza < ActiveRecord::Base
# class Pizza
  require 'net/http'
  require 'json'
  def fetchAll

    uri = URI.parse("https://pizzaserver.herokuapp.com/pizzas")

    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true

    request = Net::HTTP::Get.new(uri.request_uri)

    response = http.request(request)

    return JSON.parse(response.body)
  end
  def createPizza()

  end
end
