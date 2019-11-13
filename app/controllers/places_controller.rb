class PlacesController < ApplicationController
    def index
        @places = Place.geocoded #returns places with coordinates

        @markers = @places.map do |place|
            {
            lat: place.latitude,
            lng: place.longitude
            }
        end
    end
end
