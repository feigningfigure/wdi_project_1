# class LocationsController < ApplicationController
#   def index
#     if params[:search].present?
#       @locations = Location.near(params[:search], 50, :order => :distance)
#     else
#       @locations = Location.all
#     end
#   end

#   def show
#     @location = Location.find(params[:id])
#   end

#   def new
#     @location = Location.new
#   end

#   def create
#     @location = Location.new(params[:location])
#     if @location.save
#       redirect_to @location, :notice => "Successfully created location."
#     else
#       render :action => 'new'
#     end
#   end

#   def edit
#     @location = Location.find(params[:id])
#   end

#   def update
#     @location = Location.find(params[:id])
#     if @location.update_attributes(params[:location])
#       redirect_to @location, :notice  => "Successfully updated location."
#     else
#       render :action => 'edit'
#     end
#   end

#   def destroy
#     @location = Location.find(params[:id])
#     @location.destroy
#     redirect_to locations_url, :notice => "Successfully destroyed location."
#   end
# end




# #----ANDREW'S CODE-----

#   # def index

#   # end


#   # def new
#   #   @location = Location.new
#   # end

#   # def create
#   #   Location.create(location_attributes)
#   # end

#   # def show
#   #   @location = Location.find(params[:id])
#   # end

#   # def edit
#   #   @location = Location.find(params[:id])
#   #   render partial: "locationform", locals: { location_local: @location }
#   # end

#   # def update
#   #    location = Location.find(params[:id])
#   #    location.update_attributes(location_attributes)
#   #    redirect_to messages_url
#   # end

#   # def destroy
#   #  location[:location_id] = nil
#   # end

#   # private

#   # def location_attributes
#   #   params.require(:location).permit(:address, :latitude, :longitude)
#   # end


# #----ATTEMPT AT CONVERSION-----
#   # def to_km
#   #   @latitude_km = latitude * (10000/90)
#   #   @longitude_km = longitude * (10000/90)
#   # end

#   # def round_location
#   #   latitude_ft = latitude_km * 3280.4
#   # end
