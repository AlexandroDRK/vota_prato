class RestaurantesController < ApplicationController
  before_action :set_restaurante, only: %i[ show edit update destroy ]
  require 'csv'
  def index
    @restaurantes = Restaurante.order :nome

    respond_to do |format|
      format.html
      format.csv { send_data @restaurantes.to_csv, filename: "restaurantes-#{Date.today}.csv" }
    end
  end  


  def show
    @restaurantes = Restaurante.find(params[:id])

    respond_to do |formats|
      formats.html
      formats.pdf do
        render pdf: "Restaurante id:#{@restaurantes.id}" , template: "restaurantes/show" , formats: [:html]  
      end
    end
  end

  def destroy
    @restaurante = Restaurante.find(params[:id])
    @restaurante.destroy
    redirect_to(action: "index")
  end
  def set_restaurante
    @restaurantes = Restaurante.find(params[:id])                end
end
