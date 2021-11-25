class PagesController < ApplicationController
  def home
    if params[:query].present?
      @results = PgSearch.multisearch("superman")
    else
      @results = Movie.all + TvShow.all
    end
  end
end
