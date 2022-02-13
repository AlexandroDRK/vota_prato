class RestaurantesController < ApplicationController
  require 'csv'
  def index
    @restaurantes = Restaurante.order :nome

    respond_to do |format|
      format.html
      format.csv { send_data @restaurantes.to_csv, filename: "restaurantes-#{Date.today}.csv" }
    end
  end
end
