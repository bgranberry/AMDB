class WelcomeController < ApplicationController
  def index
  	@anime = Anime.select("name, id")
  	@genre = Genre.select("name, id")
  	@contributor = Contributor.select("name, id")
  	@tag = Tag.select("name, id")
  end
end
