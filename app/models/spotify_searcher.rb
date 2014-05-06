class SpotifySearcher < ActiveRecord::Base
  def self.search(search_term)
    require 'faraday'
    require 'json'
    require 'pp'
    response = Faraday.get "http://ws.spotify.com/search/1/album.json?q=#{search_term}"
    JSON.parse(response.body)
  end
end