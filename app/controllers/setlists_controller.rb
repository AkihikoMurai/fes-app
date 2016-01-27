class SetlistsController < ApplicationController
  
  def create
    setlist = Setlist.new(setlist_params)
    @artist = Artist.find(setlist.artist_id)
    @setlist = @artist.setlists.build(setlist_params)
    if @setlist.save
      flash[:success] = "セットリストを登録しました"
      redirect_to artist_path(@artist)
    else
      flash[:success] = "登録できませんでした。再入力して下さい。"
      render 'artists/musicadd'
    end
  end
  
  def edit
    @setlist = Setlist.find(params[:id])
    @artist = Artist.find(@setlist.artist_id)
  end
  
  def update
    @setlist = Setlist.find(params[:id])
    @artist = Artist.find(@setlist.artist_id)
    if @setlist.update(setlist_params)
      #保存に成功した場合はトップページへリダイレクト
      redirect_to artist_path(@artist) , notice:'セットリストを編集しました'
    else
      #保存に失敗した場合は編集画面へ戻す
      render 'edit'
    end
  end  

  def destroy
    @setlist = Setlist.find(params[:id])
    @artist = Artist.find(@setlist.artist_id)
    @setlist.destroy
    redirect_to artist_path(@artist), notice:'セットリストを削除しました。'
  end  
  
  private
  
  def setlist_params
    params.require(:setlist).permit(:artist_id, :music1, :youtubeurl)
  end
end
