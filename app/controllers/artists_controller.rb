class ArtistsController < ApplicationController
  #before_action :set_artist, only:[:edit, :update, :destroy]
  
  #def new
    #@fes = Festival.find(params[:id])
    #@artist = Artist.new
  #end
  
  def show
    #@fes = Festival.find(params[:id])
    @artist = Artist.find(params[:id])
  end
  
  def create
    artist = Artist.new(artist_params)
    @festival = Festival.find(artist.festival_id)
    @artist = @festival.artists.build(artist_params)
      if @artist.save
        flash[:success] = "出演アーティストを登録しました"
        redirect_to festival_path(@festival)
      else
        render 'artist/new'
      end
  end
  
  def musicadd
    @artist = Artist.find(params[:id])
  end

  def edit
    @fes = Festival.find(params[:id])
    @artists = @fes.artists
  end
  
  def update
    if @message.update(message_params)
      #保存に成功した場合はトップページへリダイレクト
      redirect_to root_path , notice:'メッセージを編集しました'
    else
      #保存に失敗した場合は編集画面へ戻す
      render 'edit'
    end
  end  

  def destroy
    @fes = Festival.find(params[:id])
    @artists = @fes.artists
    @artists.destroy
    redirect_to root_path, notice:'メッセージを削除しました。'
  end  
    
  private
  
  def artist_params
    params.require(:artist).permit(:musician,:festival_id)
  end
  
  def set_artist
    @artist = Artist.find(params[:id])
  end
  
end
