class ToppingsController < ApplicationController
  # layout "pizza"
  def index
    pizza = Pizza.new
    @toppings = pizza.fetchAllToppings
  end

  def create
  end

end
