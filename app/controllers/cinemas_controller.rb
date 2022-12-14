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

  def destroy
    cinema = Cinema.find(params[:id])
    cinema.destroy
  end

  def edit
    @cinema = Cinema.find(params[:id])
  end

  def update
    cinema = Cinema.find(params[:id])
    cinema.update(cinema_params)
  end

  private
  def cinema_params
    params.require(:cinema).permit(:name, :image, :text)
  end

end
