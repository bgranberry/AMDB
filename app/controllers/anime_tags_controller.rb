class AnimeTagsController < ApplicationController
  def show
    @anime_tag = AnimeTag.find(params[:id])
  end

  def new
  end

  def create
    @anime_tag = AnimeTag.new(anime_tag_params)
   
    @anime_tag.save
    redirect_to @anime_tag
  end

  private 
  def anime_tag_params
    params.require(:anime_tags).permit(:anime_id, :tag_id)
  end
end
