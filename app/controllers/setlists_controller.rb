class SetlistsController < ApplicationController
  
  def create
    setlist = Setlist.new(setlist_params)
    @artist = Artist.find(setlist.artist_id)
    @setlist = @artist.setlists.build(setlist_params)
    if @setlist.save
      flash[:success] = "セットリストを登録しました"
      redirect_to @setlist
    else
      render 'artists/musicadd'
    end
  end
  
  def show
    @artist = Artist.find(params[:id])
    @setlists = @artist.setlists
  end
  
  private
  
  def setlist_params
    params.require(:setlist).permit(:artist_id, :music1, :youtubeurl)
  end
end
