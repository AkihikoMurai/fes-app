class FestivalsController < ApplicationController
    
    def show
        @fes = User.find(params[:id])
        @fesshow = @fes.festivals.order(created_at: :desc)
    end
    
    def new
        @fes = Festival.new
    end

    def create
        @fes = Festival.new(fes_params)
        if @fes.save
          flash[:success] = "Welcome to the FesApp"
          redirect_to @fes
        else
          render 'new'
        end
    end

    private
  
    def fes_params
        params.require(:festival).permit(:fes_name, :fes_data, :fes_place, :artist)
    end
    
end
