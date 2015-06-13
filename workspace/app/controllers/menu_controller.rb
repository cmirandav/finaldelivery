class MenuController < ApplicationController
  def index
      @restaurantes = Restaurant.all
  end

end
