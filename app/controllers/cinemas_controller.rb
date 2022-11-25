class CinemasController < ApplicationController

  def index
    @cinemas = Cinema.all
  end

  def new
    @cinema = Cinema.new
  end

end
