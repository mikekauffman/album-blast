class SpotifySearcherController < ApplicationController

  def songs
  end

  def albums
  end

  def index
    if params[:name]
      @search_term = params[:name]
      @json_data = SpotifySearcher.search(params[:name].gsub("%20", "#"))
    end
  end

  def search
    redirect_to "/#{params[:search_term].gsub(" ", "%20")}"
  end

end
