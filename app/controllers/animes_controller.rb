class AnimesController < ApplicationController
  def show
    @anime = Anime.find(params[:id])
  end

  def new
  end

  def create
    @anime = Anime.new(anime_params)
   
    @anime.save
    redirect_to @anime
    # render plain: params[:animes].inspect
  end

  private
  def anime_params
    params.require(:animes).permit(:name, :runtime, :age_rating, :year, :description)
  end
end
