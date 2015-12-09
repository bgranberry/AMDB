class GenresController < ApplicationController

  def show
    @genre = Genre.find(params[:id])
  end

  def new
  end

  def create
    @genre = Genre.new(genre_params)
   
    @genre.save
    redirect_to @genre
  end

  private 
  def genre_params
    params.require(:genres).permit(:name)
  end
end
