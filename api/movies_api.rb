require_relative "../models/movie"
require 'json'
require 'open-uri'

class MoviesApi
  def query(query)
    apikey = "c6fd7907da5640cbe6d0a27155709011"
    url = "https://api.themoviedb.org/3/search/movie?api_key=#{apikey}&query=#{query}"
    movie_serilalized = URI.open(url).read
    response = JSON.parse(movie_serilalized)["results"]
    filter_response(response)
  end

  private

  def filter_response(data)
    data.map do |film|
      # binding.pry
      Movie.new({
        name: film["original_title"],
        description: film["overview"],
        rating: film["vote_average"],
        year: film["release_date"]&.split(" ")&.first
      })
    end
  end
end
