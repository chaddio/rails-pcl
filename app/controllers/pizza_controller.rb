class PizzaController < ApplicationController
  require 'pp'
  def index
    
    pizza = Pizza.new
    results = pizza.fetchAll
    @pizzas = results.body
  end
  def edit
    #@pizza = Pizza.gets
  end
  def update
  end
end
