class CinemasController < ApplicationController

  def index
    @cinemas = Cinema.all
  end

  def new
    @cinema = Cinema.new
  end

  def create
    Cinema.create(cinema_params)
  end

  private
  def cinema_params
    params.require(:cinema).permit(:name, :image, :text)
  end

end
