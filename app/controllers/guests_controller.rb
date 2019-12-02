class GuestsController < ApplicationController
    
    def index
        @guests = Guest.all
        respond_to do |format|
            format.html
            format.csv { send_data @guests.to_csv(col_sep: ",") }
        end
    end

    def new
    end

    def create
        @guest = Guest.new(guest_params)
        if @guest.save
            redirect_to root_path
            flash[:success] = "<span><strong>Super!</strong> 🎉 Nous te remercions pour ta réponse, elle a bien été enregistrée!</span>"
        else 
            flash[:errors] = @guest.errors.full_messages
            render :new
        end
    end


    private

    def guest_params
        params.require(:guest).permit(:first_name, :last_name, :email, :address, :is_coming, :is_accompanied, :accompanying_first_name, :accompanying_last_name, :is_present_for_brunch, :comments)
    end
end
