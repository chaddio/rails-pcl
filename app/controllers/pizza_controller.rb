class PizzaController < ApplicationController
  def index
    pizza = Pizza.new
    @pizzas = pizza.fetchAll
  end

  def edit
    # render html: "<strong>still working on </strong><a href='#' onclick='history.go(-1); return false;'>Back</a>".html_safe
    output = "<p>im still working on this, <a href='" + pizza_url  + "'>click to go back</a></p>"
    render html: output.html_safe
  end

  def update
  end
end
