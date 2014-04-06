require 'open-uri'
require 'nokogiri'
require 'httparty'

class PodcastsController < ApplicationController
  def index
     results_httparty = HTTParty.get("https://itunes.apple.com/search?entity=podcast&limit=25&term=#{params[:search_term]}")
    @keyword_results_json = JSON.parse(results_httparty)["results"]
    # genre_results = HTTParty.get(https://itunes.apple.com/search?entity=podcast&limit=25&genreIndex=#{params[:search_term]})
  end
  def info
    info_httparty = HTTParty.get("https://itunes.apple.com/lookup?id=#{params[:podcast_id]}")
    @info_results_json = JSON.parse(info_httparty)["results"][0]
    @image = @info_results_json["artworkUrl600"]
    @author = @info_results_json["artistName"]
    url_to_scrape_for_description = @info_results_json["collectionViewUrl"]
    @doc = Nokogiri::HTML(open(url_to_scrape_for_description))
    @description = @doc.css("div.product-review p")
  end
  def search
  end
end
