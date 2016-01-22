class FestivalsController < ApplicationController
    
   # def index
   #     if params[:user_id]
    #        @user = User.find(params[:user_id])
     #       @fes = @user.festivals
      #  else
       #     @fes = Festival.all
    #    end    
    #end
    
    def new
        @fes = Festival.new
    end

    def create
        @fes = current_user.festivals.build(fes_params)
        if @fes.save
          flash[:success] = "フェスを登録しました"
          redirect_to festival_path(@fes)
        else
          render 'new'
        end
    end

    def show
        @fes = Festival.find(params[:id])
    end

    def touroku
        @fes = Festival.find(params[:id]) 
    end    
    
    #def touroku2
    #    @fes = Festival.find(params[:id]) 
    #end 
    
    #def touroku3
    #    @fes = Festival.find(params[:id]) 
    #end 
    
    #def touroku4
    #    @fes = Festival.find(params[:id]) 
    #end 
    
    #def touroku5
    #    @fes = Festival.find(params[:id]) 
    #end 

    private
  
    def fes_params
        params.require(:festival).permit(:fes_name, :fes_data, :fes_place, 
                                :artist, :artist2, :artist3, :artist4, :artist5)
    end
    
    #def setlist_params
    #    params.require(:setlist).permit(:artist, :music1, :music2, :music3, :music4 ,
    #                            :music5, :music6, :music7, :music8, :music9, :music10)
    #end
end
