class SetlistsController < ApplicationController
  
  #def new
  #  @setlist = Setlist.new
  #end
  
  def create
    @fes = Festival.find(params[:festivalid])
    @setlist = @fes.setlists.build(setlist_params)
    if @setlist.save
      flash[:success] = "セットリストを登録しました"
      redirect_to @setlist
    else
      render 'new'
    end
  end
  
  def show
    @fes = Festival.find(params[:id])
    @setlist = Setlist.find(params[:id])
  end
  
  private
  
  def setlist_params
    params.require(:setlist).permit(:festivalid, :artist, :music1, :music2, :music3, :music4,
                                    :music5, :music6, :music7, :music8, :music9, :music10)
  end
end
