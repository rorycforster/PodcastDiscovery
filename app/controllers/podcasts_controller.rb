require 'open-uri'
require 'nokogiri'
require 'httparty'
require 'will_paginate/array'

class PodcastsController < ApplicationController

  def index
     results_httparty = HTTParty.get("https://itunes.apple.com/search?entity=podcast&limit=250&lang=en_us&term=#{params[:search_term]}")
    @keyword_results_json = JSON.parse(results_httparty)["results"]
    @keyword_results_json = @keyword_results_json.paginate(:per_page => 20, :page => params[:page])
    # genre_results = HTTParty.get(https://itunes.apple.com/search?entity=podcast&limit=25&genreIndex=#{params[:search_term]})
  end

  def info
    load_tweets
    info_httparty = HTTParty.get("https://itunes.apple.com/lookup?lang=en_us&id=#{params[:podcast_id]}")
    @info_results_json = JSON.parse(info_httparty)["results"][0]
    @image = @info_results_json["artworkUrl600"]
    @author = @info_results_json["artistName"]
    url_to_scrape_for_description = @info_results_json["collectionViewUrl"]
    @doc = Nokogiri::HTML(open(url_to_scrape_for_description))
    @description = @doc.css("div.product-review p")
  end
  def search
  end
  private
  def load_tweets
  client.sample do |object|
    puts object.text if object.is_a?(Twitter::Tweet)
  end
  end
end
