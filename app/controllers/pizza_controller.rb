class PizzaController < ApplicationController
  def index
    pizza = Pizza.new
    @pizzas = pizza.fetchAll
  end
  def edit
    render html: "<strong>still working on <a onclick='history.go.back(1)'>Back</a></strong>".html_safe
  end
  def update
  end
end
