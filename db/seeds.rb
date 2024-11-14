require "json"
require "open-uri"

url = "https://tmdb.lewagon.com/movie/top_rated"
movie_serialized = URI.parse(url).read
movie = JSON.parse(movie_serialized)

movie["results"].each do |movie|
  Movie.create(
    title: movie["original_title"],
    overview: movie["overview"],
    poster_url: "https://image.tmdb.org/t/p/original/#{movie["poster_path"]}",
    rating: movie["vote_average"]
  )
end
