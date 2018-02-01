class PlacesController < ApplicationController
  def new
    @place = Place.new

  end

  def create
    @place = Place.new(place_params)
    if @place.save
      redirect_to("/plans")
    else
    end
  end

  def place_params
  params.require(:place).permit(:name, :latitude, :longtitude)
  end

end
