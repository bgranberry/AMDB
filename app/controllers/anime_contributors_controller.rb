class AnimeContributorsController < ApplicationController

  def show
    @anime_contributor = AnimeContributor.find(params[:id])
  end

  def new
  end

  def create
    @anime_contributor = AnimeContributor.new(anime_contributor_params)
   
    @anime_contributor.save
    redirect_to @anime_contributor
  end

  private 
  def anime_contributor_params
    params.require(:anime_contributors).permit(:contributor_id, :anime_id, :role)
  end
end
