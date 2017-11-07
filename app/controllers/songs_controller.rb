class SongsController < ApplicationController
  
 def index
   category = Category.find(category_params[:category_id])
   @songs = category.songs
end

  

  def create
    @category = Category.find(params[:category_id])
    @song = @category.songs.create(song_params)
    redirect_to category_path(@category)
  end

 def destroy
    @category = Category.find(params[:category_id])
    @song = @category.songs.find(params[:id])
    @song.destroy
    redirect_to category_path(@category)
  end

  private

  def song_params
    params.require(:song).permit(:name, :artist, :album )
 	end

  
end
