class PlacesController < ApplicationController
  def new
    @place = Place.new
  end

  def show
    @place = Place.all
    @hash = Gmaps4rails.build_markers(@place) do |place, marker|
      marker.lat place.latitude
      marker.lng place.longtitude
      # marker.infowindow place.description
      # marker.json({title: place.title})
    end
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
