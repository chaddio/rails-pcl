# class Pizza < ActiveRecord::Base
class Pizza
  include ActiveModel::Model
  require 'net/http'
  require 'json'
  def fetchAll

    uri = URI.parse("https://pizzaserver.herokuapp.com/pizzas")

    # Full control
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true

    request = Net::HTTP::Get.new(uri.request_uri)

    response = http.request(request)

    return response

  end
  def createPizza()

  end
end
