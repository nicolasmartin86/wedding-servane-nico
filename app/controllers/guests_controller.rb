class GuestsController < ApplicationController

    def index
        @guests = Guest.all
    end

    def new
    end

    def create
        @guest = Guest.new(guest_params)
        if @guest.save
            redirect_to root_path
        else 
            render :new
        end
    end


    private

    def guest_params
        params.require(:guest).permit(:first_name, :last_name, :email, :address, :is_coming, :is_accompanied, :accompanying_first_name, :accompanying_last_name, :is_present_for_brunch, :comments)
    end
end
