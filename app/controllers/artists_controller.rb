class ArtistsController < ApplicationController
  #before_action :set_artist, only:[:edit, :update, :destroy]
  
  #def new
    #@fes = Festival.find(params[:id])
    #@artist = Artist.new
  #end
  
  def show
    @artist = Artist.find(params[:id])
    @setlists = @artist.setlists
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
    @artist = Artist.find(params[:id])
    @fes = Festival.find(@artist.festival_id)
  end
  
  def update
    @artist = Artist.find(params[:id])
    @fes = Festival.find(@artist.festival_id)
    if @artist.update(artist_params)
      #保存に成功した場合はトップページへリダイレクト
      redirect_to festival_path(@fes) , notice:'出演者を編集しました'
    else
      #保存に失敗した場合は編集画面へ戻す
      render 'edit'
    end
  end  

  def destroy
    @artist = Artist.find(params[:id])
    @fes = Festival.find(@artist.festival_id)
    @artist.destroy
    redirect_to festival_path(@fes), notice:'出演者を削除しました。'
  end  
    
  private
  
  def artist_params
    params.require(:artist).permit(:musician,:festival_id)
  end
  
  def set_artist
    @artist = Artist.find(params[:id])
  end
  
end
