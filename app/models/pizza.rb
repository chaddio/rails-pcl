class Pizza < ActiveRecord::Base
# class Pizza
  def fetchAll

    uri = URI.parse("https://pizzaserver.herokuapp.com/pizzas")

    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true

    request = Net::HTTP::Get.new(uri.request_uri)
    request["Content-Type"] = "application/json"
    request["Accept"] = "application/json"

    response = http.request(request)

    return JSON.parse(response.body)
  end

  def fetch(id)
    uri = URI.parse("https://pizzaserver.herokuapp.com/pizzas/" + id + "/toppings")

    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true

    request = Net::HTTP::Get.new(uri.request_uri)
    request["Content-Type"] = "application/json"
    request["Accept"] = "application/json"

    response = http.request(request)

    response_body = response.body

    object = JSON.parse(response_body)
    all_pizzas = self.fetchAll

    all_pizzas.each do |pizza|
      if pizza['id'].to_s == id.to_s
        @prepend_pizza = '{"id" : "' + pizza['id'].to_s + '", "name" : "' + pizza['name'].to_s + '", "description" : "' + pizza['description'].to_s + '", "toppings" : '
      end
    end

    if(object.instance_of? Array)
      return JSON.parse(@prepend_pizza.to_s + response_body + '}')
    else
      return JSON.parse(@prepend_pizza.to_s + '[' + response_body + ']}')
    end
  end

  def fetchAllToppings

    uri = URI.parse("https://pizzaserver.herokuapp.com/toppings")

    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true

    request = Net::HTTP::Get.new(uri.request_uri)
    request["Content-Type"] = "application/json"
    request["Accept"] = "application/json"

    response = http.request(request)

    return JSON.parse(response.body)
  end

  def createPizza()

  end
end
