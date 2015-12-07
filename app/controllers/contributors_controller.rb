class ContributorsController < ApplicationController
  def show
    @contributor = Contributor.find(params[:id])
    @anime_contributors = AnimeContributor.where(:contributor_id => params[:id]).all
    # @animes = Anime.where(:id => find_each(@anime_contributor.anime_id)
  end

  def new
  end

  def create
    @contributor = Contributor.new(contributor_params)
   
    @contributor.save
    redirect_to @contributor
  end

  private
  def contributor_params
    params.require(:contributors).permit(:name, :age, :birthplace, :trivia)
  end
end
