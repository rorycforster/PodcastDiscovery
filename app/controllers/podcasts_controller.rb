class PodcastsController < ApplicationController
  def index
     results_httparty = HTTParty.get("https://itunes.apple.com/search?entity=podcast&limit=25&term=#{params[:search_term]}")
    @keyword_results_json = JSON.parse(results_httparty)["results"]
    # genre_results = HTTParty.get(https://itunes.apple.com/search?entity=podcast&limit=25&genreIndex=#{params[:search_term]})
  end
  def info
    info_httparty = HTTParty.get()

  end
  def search
  end
end
