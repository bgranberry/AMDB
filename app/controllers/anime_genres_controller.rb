class AnimeGenresController < ApplicationController
  def show
    @anime_genre = AnimeGenre.find(params[:id])
  end

  def new
  end

  def create
    @anime_genre = AnimeGenre.new(anime_genre_params)
   
    @anime_genre.save
    redirect_to @anime_genre
  end

  private 
  def anime_genre_params
    params.require(:anime_genres).permit(:anime_id, :genre_id)
  end
end
