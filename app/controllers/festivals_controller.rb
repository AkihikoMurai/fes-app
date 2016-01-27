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
    
    def artistnew
      @fes = Festival.find(params[:id])
      render 'artists/new'
    end

    def show
        @fes = Festival.find(params[:id])
        @artists = @fes.artists
        #if Artist != nil ?
        #    @artist = Artist.find(params[:id])
        #end
    end
    
    def edit
        @fes = Festival.find(params[:id])
    end

    def update
        @fes = Festival.find(params[:id])
        if @fes.update(fes_params)
          #保存に成功した場合はトップページへリダイレクト
          redirect_to root_path , notice:'フェスを編集しました'
        else
          #保存に失敗した場合は編集画面へ戻す
          render 'edit'
        end
    end  
  
    def destroy
        @fes = Festival.find(params[:id])
        @fes.destroy
        redirect_to root_path, notice:'フェスを削除しました。'
    end   
    
    private
  
    def fes_params
        params.require(:festival).permit(:fes_name, :fes_data, :fes_place)
    end
    
    #def setlist_params
    #    params.require(:setlist).permit(:artist, :music1, :music2, :music3, :music4 ,
    #                            :music5, :music6, :music7, :music8, :music9, :music10)
    #end
end
