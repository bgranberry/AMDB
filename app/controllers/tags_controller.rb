class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
    @anime_tags = AnimeTag.where(:tag_id => params[:id]).all
  end

  def new
  end

  def create
    @tag = Tag.new(tag_params)
   
    @tag.save
    redirect_to @tag
  end

  private 
  def tag_params
    params.require(:tags).permit(:name)
  end
end
