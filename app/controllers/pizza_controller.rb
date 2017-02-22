class PizzaController < ApplicationController
  def index
    pizza = Pizza.new
    @pizzas = pizza.fetchAll
  end

  def edit
    render html: "<strong>still working on </strong><a href='#' onclick='history.go(-1); return false;'>Back</a>".html_safe
  end

  def update
  end
end
