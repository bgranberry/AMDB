class ContributorsController < ApplicationController
  def show
    @contributor = Contributor.find(params[:id])
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
