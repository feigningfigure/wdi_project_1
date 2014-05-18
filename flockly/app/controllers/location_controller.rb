class LocationController < ApplicationController

def new
  @location = Location.new
end

def create
  @address = params[:address]
end

def show
  @location = Location.find(params[:address])
end


  # def to_km
  #   @latitude_km = latitude * (10000/90)
  #   @longitude_km = longitude * (10000/90)
  # end

  # def round_location
  #   latitude_ft = latitude_km * 3280.4
  # end


end
