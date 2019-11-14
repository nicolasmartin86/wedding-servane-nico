class PlacesController < ApplicationController
    def index
        @places = Place.geocoded #returns places with coordinates
    end
end
