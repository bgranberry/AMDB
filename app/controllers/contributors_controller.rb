class ContributorsController < ApplicationController
  def show
    @contributor = Contributor.find(params[:id])
    @anime_contributor = AnimeContributor.find_by contributor_id: params[:id]
    @anime = Anime.find(@anime_contributor.anime_id)
  end

  def new
  end

  def create
    @contributor = Contributor.new(anime_params)
   
    @contributor.save
    redirect_to @contributor
  end

  private
  def anime_params
    params.require(:contributors).permit(:name, :age, :birthplace, :trivia)
  end
end
